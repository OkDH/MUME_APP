import 'package:freezed_annotation/freezed_annotation.dart';

part 'average_price_info.freezed.dart';
part 'average_price_info.g.dart';

@freezed
class AveragePriceInfo with _$AveragePriceInfo {
  factory AveragePriceInfo({
    String? tradeDate,
    double? averagePrice,
    int? holdingQuantity,
  }) = _AveragePriceInfo;

  factory AveragePriceInfo.fromJson(Map<String, dynamic> json) => _$AveragePriceInfoFromJson(json);
}