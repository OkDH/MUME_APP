import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:mume/model/dto/mume/state_map.dart';
import 'package:mume/model/dto/market_index.dart';
import 'package:mume/model/dto/stock.dart';
import 'package:mume/model/dto/mume/account.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/login_page_bloc.dart';
import 'package:mume/model/repository/login_repository.dart';
import 'package:mume/model/repository/market_index_repository.dart';
import 'package:mume/model/repository/mume/account_repository.dart';
import 'package:mume/model/repository/mume/infinite_repository.dart';

class AccountPageBloc extends LoginBloc<Object> {

  final AccountRepository _accountRepository;
  final InfiniteRepository _infiniteRepository;
  final MarketIndexRepository _marketIndexRepository;

  AccountPageBloc(
    this._accountRepository,
    this._infiniteRepository,
    this._marketIndexRepository,
    LoginRepository loginRepository,
  ) : super(loginRepository);

  // ETF 리스트
  late MumeStockMarketIndex mumeStockMarketIndex = MumeStockMarketIndex();
  List<Stock> etfList = List.empty(growable: true);

  // 내 계좌 리스트
  List<Account> accountList = List.empty(growable: true);
  Map<int, String> accountNames = {};

  // 계좌 현황
  StateMap accountState = StateMap();

  // 계좌 내 종목 리스트
  List stockList = List.empty(growable: true);

  // 계좌 내 종목 검색 쿼리
  Map<String, dynamic> query = {
		"accountId": "ALL",  
		"infiniteState": [],
		"infiniteType": [],
		"infiniteVersion": [],
		"orderBy": "registered_date desc",
		"offset": 0,
		"limit": 8
	};

  // 검색 필터
  Map<String, dynamic> filter = {
		"infiniteState": [
			{ "name": "진행중", "value": true },
			{ "name": "매수중지", "value": true },
			{ "name": "매도완료", "value": false },
			{ "name": "원금소진", "value": true }
    ],
		"infiniteType": [
			{ "name": "INFINITE", "value": true },
			{ "name": "TLP", "value": true }
		],
		"infiniteVersion": [
			{ "name": "v2.1", "value": true },
			{ "name": "v2.1후반", "value": true },
			{ "name": "v2", "value": true },
			{ "name": "v1", "value": true }
    ],
		"order": { "name": "registered", "value": "registered_date desc"},
		"orderValue": [
      { "name": "최신순", "value": true, "orderQuery": "registered_date desc"},
      { "name": "이름순", "value": false, "orderQuery": "symbol asc"}
    ]
	};

  @override
  onInitState() {
    getMyAccountList();
    getStocks(0);
    getEtfList();
  }

  @override
  onReceivedArgument(arguments) {}

  @override
  onPageResult(Object? args) {}

  @override
  onDispose() {}

  // 내 계좌 리스트 가져오기
  void getMyAccountList() {
    _accountRepository
        .getMyAccountList()
        .then((value) {
          accountList = value.data;
          accountList.forEach((e) {
            accountNames[e.accountId!] = e.accountAlias!;
          });
        })
        .then((_) => emit(ReBuildPage()))
        .catchError((e) {
      debugPrint("getMyAccountList error == $e");
    });
  }

  // 계좌 내 종목 현황 조회
  void getAccountState(){
    Map<String, dynamic> params = HashMap<String, dynamic>();
    params["accountId"] = query["accountId"];
    _accountRepository
        .getMyAccountState(params)
        .then((value) => accountState = value.data)
        .then((_) => emit(ReBuildPage()))
        .catchError((e) {
      debugPrint("getAccountState error == $e");
    });
  }

  // 계좌 내 종목 가져오기
  void getStocks(int offset){
     query["offset"] = offset;

    // filter to query
   
    // 무한매수 상태 필터
    query["infiniteState"] = List.empty(growable: true);
    filter["infiniteState"].forEach((v) => v["value"] ? query["infiniteState"].add(v["name"]) : "");

    // 무한매수/TLP 필터
    query["infiniteType"] = List.empty(growable: true);
    filter["infiniteType"].forEach((v) => v["value"] ? query["infiniteType"].add(v["name"]) : "");

    // 무한매수 버전 필터
    query["infiniteVersion"] = List.empty(growable: true);
    filter["infiniteVersion"].forEach((v) => v["value"] ? query["infiniteVersion"].add(v["name"]) : "");

    // 정렬
		query["orderBy"] = filter["order"]["value"];
    filter["orderValue"].forEach((v) => v["value"] ? query["orderBy"] = v["orderQuery"] : "");

    debugPrint("getStocks query == $query");

    // 조회
    _infiniteRepository
        .getStocks(query)
        .then((value) => stockList = value.data)
        .then((_) => emit(ReBuildPage()))
        .catchError((e) {
      debugPrint("getStocks error == $e");
    });

    getAccountState();
  }

  // 무한매수 ETF 리스트 가져오기
  void getEtfList(){
    _marketIndexRepository.getMumeStockMarketIndex()
      .then((value) {
        mumeStockMarketIndex = value.data;
        etfList = value.data.toJson().entries.map((e) => Stock.fromJson(e.value)).toList();
        etfList.sort((a, b) => a.gapRsi!.compareTo(b.gapRsi!));
      })
      .then((_) => emit(ReBuildPage()))
      .catchError((e) {
        debugPrint("getEtfList error == $e");
      }
    );
  }

}
