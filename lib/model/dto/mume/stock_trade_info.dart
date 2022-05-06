import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_trade_info.freezed.dart';
part 'stock_trade_info.g.dart';

@freezed
class StockTradeInfo with _$StockTradeInfo {
  factory StockTradeInfo({
    String? tradeName,
    double? price,
    int? quantity,
    String? concludeType,
  }) = _StockTradeInfo;

  factory StockTradeInfo.fromJson(Map<String, dynamic> json) => _$StockTradeInfoFromJson(json);
}