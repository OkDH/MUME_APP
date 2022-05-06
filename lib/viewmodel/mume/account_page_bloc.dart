import 'package:flutter/foundation.dart';
import 'package:mume/model/repository/mume/account_repository.dart';
import 'package:mume/model/repository/login_repository.dart';
import 'package:mume/model/repository/market_index_repository.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/login_page_bloc.dart';

class AccountPageBloc extends LoginBloc<Object> {

  final AccountRepository _accountRepository;

  AccountPageBloc(
    this._accountRepository,
    LoginRepository loginRepository,
  ) : super(loginRepository);

  // 내 계좌 리스트
  List accountList = List.empty(growable: true);

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
		"infiniteState": {
			"ing": { "name": "진행중", "value": true },
			"stop": { "name": "매수중지", "value": true },
			"done": { "name": "매도완료", "value": false },
			"out": { "name": "원금소진", "value": true }
		},
		"infiniteType": {
			"infinite": { "name": "INFINITE", "value": true },
			"tlp": { "name": "TLP", "value": true }
		},
		"infiniteVersion": {
			"v2_1": { "name": "v2.1", "value": true },
			"v2_1_SH": { "name": "v2.1후반", "value": true },
			"v2": { "name": "v2", "value": true },
			"v1": { "name": "v1", "value": true }
		},
		"order": { "name": "registered", "value": "registered_date desc"},
		"orderValue": {
			"registered": { "name": "registered", "value": "registered_date desc"},
			"symbol": { "name": "symbol", "value": "symbol asc"}
		}
	};

  @override
  onInitState() {
    getMyAccountList();
    getStocks(0);
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
        .then((value) => accountList = value.data)
        .then((_) => emit(ReBuildPage()))
        .catchError((e) {
      debugPrint("getMyAccountList error == $e");
    });
  }

  // 계좌 내 종목 가져오기
  void getStocks(int offset){
     query["offset"] = offset;

    // filter to query
   
    // 무한매수 상태 필터
    query["infiniteState"] = List.empty(growable: true);
    filter["infiniteState"].forEach((k, v) => query["infiniteState"].add(k));

    // 무한매수/TLP 필터
    query["infiniteType"] = List.empty(growable: true);
    filter["infiniteType"].forEach((k, v) => query["infiniteType"].add(k));

    // 무한매수 버전 필터
    query["infiniteVersion"] = List.empty(growable: true);
    filter["infiniteVersion"].forEach((k, v) => query["infiniteVersion"].add(k));

    // 정렬
		query["orderBy"] = filter["order"]["value"];

    // 조회
    
  }

}
