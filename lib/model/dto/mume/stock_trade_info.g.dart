// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_trade_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockTradeInfo _$$_StockTradeInfoFromJson(Map<String, dynamic> json) =>
    _$_StockTradeInfo(
      tradeName: json['tradeName'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      concludeType: json['concludeType'] as String?,
    );

Map<String, dynamic> _$$_StockTradeInfoToJson(_$_StockTradeInfo instance) =>
    <String, dynamic>{
      'tradeName': instance.tradeName,
      'price': instance.price,
      'quantity': instance.quantity,
      'concludeType': instance.concludeType,
    };
