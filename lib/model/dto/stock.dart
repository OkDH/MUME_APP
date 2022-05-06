import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock.freezed.dart';
part 'stock.g.dart';

@freezed
class Stock with _$Stock {
  factory Stock({
    String? symbol,
    String? stockDate,
    double? priceHigh,
    double? priceLow,
    double? priceClose,
    double? priceOpen,
    double? prevClose,
    double? chg,
    double? chgp,
    double? volume,
    double? upAvg,
    double? dwAvg,
    double? rsi,
    String? updateTime,
    String? sector,
    String? sectorName,
    double? baseRsi,
    bool? isWarn,
    String? lastTradeTime,
    double? gapRsi,
  }) = _Stock;

  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);
}