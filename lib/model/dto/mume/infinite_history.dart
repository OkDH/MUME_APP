import 'package:freezed_annotation/freezed_annotation.dart';

part 'infinite_history.freezed.dart';
part 'infinite_history.g.dart';

@freezed
class InfiniteHistory with _$InfiniteHistory {
  factory InfiniteHistory({
    int? infiniteHistoryId,
    int? infiniteId,
    String? tradeDate,
    String? tradeType,
    double? unitPrice,
    int? quantity,
    String? registeredType,
    String? registeredDate,
    String? updatedDate,
    bool? isDeleted,
  }) = _InfiniteHistory;

  factory InfiniteHistory.fromJson(Map<String, dynamic> json) => _$InfiniteHistoryFromJson(json);
}