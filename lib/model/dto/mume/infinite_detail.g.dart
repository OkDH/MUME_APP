// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infinite_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfiniteDetail _$$_InfiniteDetailFromJson(Map<String, dynamic> json) =>
    _$_InfiniteDetail(
      memberId: json['memberId'] as int?,
      accountId: json['accountId'] as int?,
      infiniteId: json['infiniteId'] as int?,
      symbol: json['symbol'] as String?,
      divisions: json['divisions'] as int?,
      feesPer: (json['feesPer'] as num?)?.toDouble(),
      infiniteType: json['infiniteType'] as String?,
      infiniteState: json['infiniteState'] as String?,
      infiniteVersion: json['infiniteVersion'] as String?,
      startedDate: json['startedDate'] as String?,
      registeredDate: json['registeredDate'] as String?,
      doneDate: json['doneDate'] as String?,
      isAutoTrade: json['isAutoTrade'] as bool?,
      kskyjSeed: (json['kskyjSeed'] as num?)?.toDouble(),
      kskyjAveragePrice: (json['kskyjAveragePrice'] as num?)?.toDouble(),
      kskyjBuyPrice: (json['kskyjBuyPrice'] as num?)?.toDouble(),
      kskyjHoldingQuantity: json['kskyjHoldingQuantity'] as int?,
      kskyjUpdateDate: json['kskyjUpdateDate'] as String?,
      isKskyj: json['isKskyj'] as bool?,
      totalBuyPrice: (json['totalBuyPrice'] as num?)?.toDouble(),
      totalSellPrice: (json['totalSellPrice'] as num?)?.toDouble(),
      stockDetail: json['stockDetail'] == null
          ? null
          : Stock.fromJson(json['stockDetail'] as Map<String, dynamic>),
      stockList: (json['stockList'] as List<dynamic>?)
          ?.map((e) => Stock.fromJson(e as Map<String, dynamic>))
          .toList(),
      historyList: (json['historyList'] as List<dynamic>?)
          ?.map((e) => InfiniteHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      buyTradeInfoList: (json['buyTradeInfoList'] as List<dynamic>?)
          ?.map((e) => StockTradeInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      sellTradeInfoList: (json['sellTradeInfoList'] as List<dynamic>?)
          ?.map((e) => StockTradeInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      averagePriceList: (json['averagePriceList'] as List<dynamic>?)
          ?.map((e) => AveragePriceInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      seed: (json['seed'] as num?)?.toDouble(),
      holdingQuantity: json['holdingQuantity'] as int?,
      realFeesPer: (json['realFeesPer'] as num?)?.toDouble(),
      oneBuySeed: (json['oneBuySeed'] as num?)?.toDouble(),
      evalPrice: (json['evalPrice'] as num?)?.toDouble(),
      averagePrice: (json['averagePrice'] as num?)?.toDouble(),
      buyPrice: (json['buyPrice'] as num?)?.toDouble(),
      income: (json['income'] as num?)?.toDouble(),
      incomePer: (json['incomePer'] as num?)?.toDouble(),
      progressPer: (json['progressPer'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_InfiniteDetailToJson(_$_InfiniteDetail instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'accountId': instance.accountId,
      'infiniteId': instance.infiniteId,
      'symbol': instance.symbol,
      'divisions': instance.divisions,
      'feesPer': instance.feesPer,
      'infiniteType': instance.infiniteType,
      'infiniteState': instance.infiniteState,
      'infiniteVersion': instance.infiniteVersion,
      'startedDate': instance.startedDate,
      'registeredDate': instance.registeredDate,
      'doneDate': instance.doneDate,
      'isAutoTrade': instance.isAutoTrade,
      'kskyjSeed': instance.kskyjSeed,
      'kskyjAveragePrice': instance.kskyjAveragePrice,
      'kskyjBuyPrice': instance.kskyjBuyPrice,
      'kskyjHoldingQuantity': instance.kskyjHoldingQuantity,
      'kskyjUpdateDate': instance.kskyjUpdateDate,
      'isKskyj': instance.isKskyj,
      'totalBuyPrice': instance.totalBuyPrice,
      'totalSellPrice': instance.totalSellPrice,
      'stockDetail': instance.stockDetail?.toJson(),
      'stockList': instance.stockList?.map((e) => e.toJson()).toList(),
      'historyList': instance.historyList?.map((e) => e.toJson()).toList(),
      'buyTradeInfoList':
          instance.buyTradeInfoList?.map((e) => e.toJson()).toList(),
      'sellTradeInfoList':
          instance.sellTradeInfoList?.map((e) => e.toJson()).toList(),
      'averagePriceList':
          instance.averagePriceList?.map((e) => e.toJson()).toList(),
      'seed': instance.seed,
      'holdingQuantity': instance.holdingQuantity,
      'realFeesPer': instance.realFeesPer,
      'oneBuySeed': instance.oneBuySeed,
      'evalPrice': instance.evalPrice,
      'averagePrice': instance.averagePrice,
      'buyPrice': instance.buyPrice,
      'income': instance.income,
      'incomePer': instance.incomePer,
      'progressPer': instance.progressPer,
    };
