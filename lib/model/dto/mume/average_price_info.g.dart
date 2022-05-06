// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'average_price_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AveragePriceInfo _$$_AveragePriceInfoFromJson(Map<String, dynamic> json) =>
    _$_AveragePriceInfo(
      tradeDate: json['tradeDate'] as String?,
      averagePrice: (json['averagePrice'] as num?)?.toDouble(),
      holdingQuantity: json['holdingQuantity'] as int?,
    );

Map<String, dynamic> _$$_AveragePriceInfoToJson(_$_AveragePriceInfo instance) =>
    <String, dynamic>{
      'tradeDate': instance.tradeDate,
      'averagePrice': instance.averagePrice,
      'holdingQuantity': instance.holdingQuantity,
    };
