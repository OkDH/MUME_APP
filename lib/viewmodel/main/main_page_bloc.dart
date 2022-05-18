import 'package:flutter/foundation.dart';
import 'package:mume/model/repository/login_repository.dart';
import 'package:mume/model/repository/market_index_repository.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/login_page_bloc.dart';
import 'package:mume/model/dto/market_index.dart';

class MainPageBloc extends LoginBloc<Object>{
  final MarketIndexRepository _repository;

  late MumeStockMarketIndex? mumeStockMarketIndex;
  late MarketIndex marketIndex;

  MainPageBloc(
      this._repository,
      LoginRepository loginRepository
  ) : super(loginRepository);

  @override
  onInitState() {
    loadMarketIndex();
  }

  @override
  onReceivedArgument(arguments) {

  }

  @override
  onPageResult(Object? args) {

  }

  @override
  onDispose() {

  }

  @override
  Future<bool> isShowLoginView() {
    return Future.value(false);
  }

  void loadMarketIndex() {
    _repository.getMarketIndex()
      .then((rsp) {
        debugPrint("loadMarketIndex getStockMarketIndex success == ${rsp.response.data}");
        marketIndex = rsp.response.data;
        debugPrint("loadMarketIndex getStockMarketIndex success == ${rsp.response.statusCode}");
      })
      .then((_) => emit(ReBuildPage()))
      .catchError((e){
        debugPrint("loadMarketIndex getStockMarketIndex error == ${e.toString()}");
      });

    _repository.getMumeStockMarketIndex()
      .then((rsp) {
        debugPrint("loadMarketIndex getStockMarketIndexMume success == ${rsp.response.statusCode}");
      })
      .then((_) => emit(ReBuildPage()))
      .catchError((e){
        debugPrint("loadMarketIndex getStockMarketIndexMume error == ${e.toString()}");
      });
  }
}