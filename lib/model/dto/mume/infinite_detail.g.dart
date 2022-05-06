// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infinite_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfiniteDetail _$$_InfiniteDetailFromJson(Map<String, dynamic> json) =>
    _$_InfiniteDetail(
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
      realFeesPer: json['realFeesPer'] as int?,
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
