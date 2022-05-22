import 'package:mume/main.dart';
import 'package:mume/model/dto/mume/infinite_detail.dart';
import 'package:mume/model/repository/mume/infinite_repository.dart';
import 'package:mume/viewmodel/base_bloc.dart';

class OrderListPageBloc extends BaseBloc<Object>{
  final InfiniteRepository _infiniteRepository;

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

  OrderListPageBloc(this._infiniteRepository);

  // 계좌 내 종목 리스트
  List<InfiniteDetail> stockList = List.empty(growable: true);

  @override
  onInitState() {

    // 조회
    _infiniteRepository
        .getStocks(query)
        .then((value) => stockList = value.data)
        .then((_) => emit(ReBuildPage()))
        .catchError((e) {
      logd("getStocks error == $e");
    });
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
}