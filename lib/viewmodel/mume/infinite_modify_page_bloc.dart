import 'package:flutter/foundation.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/login_page_bloc.dart';
import 'package:mume/model/repository/login_repository.dart';
import 'package:mume/model/repository/market_index_repository.dart';
import 'package:mume/model/repository/mume/infinite_repository.dart';
import 'package:mume/model/dto/market_index.dart';
import 'package:mume/model/dto/stock.dart';

class InfiniteModifyPageBloc extends LoginBloc<Object> {

  final InfiniteRepository _infiniteRepository;
  final MarketIndexRepository _marketIndexRepository;

  InfiniteModifyPageBloc(
    this._infiniteRepository,
    this._marketIndexRepository,
    LoginRepository loginRepository,
  ) : super(loginRepository);

  // ETF 리스트
  late MumeStockMarketIndex mumeStockMarketIndex = MumeStockMarketIndex();
  List<Stock> etfList = List.empty(growable: true);

  @override
  onDispose() {
    getEtfList();
  }

  @override
  onInitState() {
  }

  @override
  onPageResult(Object? args) {
  }

  @override
  onReceivedArgument(Object? arguments) {
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

  // 무한매수 종목 추가
  Future addStock(Map<String, dynamic> params){
    return _infiniteRepository.addStock(params)
      .then((value) {
        debugPrint(value.toString());
      }
    );
  }
}