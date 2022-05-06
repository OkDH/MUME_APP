// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stock _$$_StockFromJson(Map<String, dynamic> json) => _$_Stock(
      symbol: json['symbol'] as String?,
      stockDate: json['stockDate'] as String?,
      priceHigh: (json['priceHigh'] as num?)?.toDouble(),
      priceLow: (json['priceLow'] as num?)?.toDouble(),
      priceClose: (json['priceClose'] as num?)?.toDouble(),
      priceOpen: (json['priceOpen'] as num?)?.toDouble(),
      prevClose: (json['prevClose'] as num?)?.toDouble(),
      chg: (json['chg'] as num?)?.toDouble(),
      chgp: (json['chgp'] as num?)?.toDouble(),
      volume: (json['volume'] as num?)?.toDouble(),
      upAvg: (json['upAvg'] as num?)?.toDouble(),
      dwAvg: (json['dwAvg'] as num?)?.toDouble(),
      rsi: (json['rsi'] as num?)?.toDouble(),
      updateTime: json['updateTime'] as String?,
      sector: json['sector'] as String?,
      sectorName: json['sectorName'] as String?,
      baseRsi: (json['baseRsi'] as num?)?.toDouble(),
      isWarn: json['isWarn'] as bool?,
      lastTradeTime: json['lastTradeTime'] as String?,
      gapRsi: (json['gapRsi'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_StockToJson(_$_Stock instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'stockDate': instance.stockDate,
      'priceHigh': instance.priceHigh,
      'priceLow': instance.priceLow,
      'priceClose': instance.priceClose,
      'priceOpen': instance.priceOpen,
      'prevClose': instance.prevClose,
      'chg': instance.chg,
      'chgp': instance.chgp,
      'volume': instance.volume,
      'upAvg': instance.upAvg,
      'dwAvg': instance.dwAvg,
      'rsi': instance.rsi,
      'updateTime': instance.updateTime,
      'sector': instance.sector,
      'sectorName': instance.sectorName,
      'baseRsi': instance.baseRsi,
      'isWarn': instance.isWarn,
      'lastTradeTime': instance.lastTradeTime,
      'gapRsi': instance.gapRsi,
    };
