import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mume/model/dto/stock.dart';
import 'package:mume/model/dto/mume/infinite_history.dart';
import 'package:mume/model/dto/mume/stock_trade_info.dart';
import 'package:mume/model/dto/mume/average_price_info.dart';

part 'infinite_detail.freezed.dart';
part 'infinite_detail.g.dart';

@freezed
class InfiniteDetail with _$InfiniteDetail {
  factory InfiniteDetail({
    int? memberId,
    int? accountId,
    int? infiniteId,
    String? symbol,
    int? divisions,
    double? feesPer,
    String? infiniteType,
    String? infiniteState,
    String? infiniteVersion,
    String? startedDate,
    String? registeredDate,
    String? doneDate,
    bool? isAutoTrade,
    double? kskyjSeed,
    double? kskyjAveragePrice,
    double? kskyjBuyPrice,
    int? kskyjHoldingQuantity,
    String? kskyjUpdateDate,
    bool? isKskyj,
    double? totalBuyPrice,
    double? totalSellPrice,

    // 해당 심볼 주가 정보
    Stock? stockDetail, 
    // 해당 심볼 주가 history
    List<Stock>? stockList,
    // 매매 내역 리스트
    List<InfiniteHistory>? historyList,
    // 매수 예약 정보 리스트
    List<StockTradeInfo>? buyTradeInfoList,
    // 매도 예약 정보 리스트
    List<StockTradeInfo>? sellTradeInfoList,
    // 평단가 변화 리스트
    List<AveragePriceInfo>? averagePriceList,

    // 종목 배정 시드
    double? seed,
    // 수량
    int? holdingQuantity,
    // 계산용 수수료율 (수수료율 * 0.01)
    double? realFeesPer,
    // 1회 매수 금액
    double? oneBuySeed,
    // 1회 매수량
    double? oneBuyQuantity,
    // 평가금액 : 종가 * 보유수량
    double? evalPrice,
    // 평단가
    double? averagePrice,
    // 매입금액
    double? buyPrice,
    // 손익금
    double? income,
    // 손익률
    double? incomePer,
    // 진행률
    double? progressPer,

  }) = _InfiniteDetail;

  factory InfiniteDetail.fromJson(Map<String, dynamic> json) => _$InfiniteDetailFromJson(json);
}