import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_map.freezed.dart';
part 'state_map.g.dart';

@freezed
class StateMap with _$StateMap {
  factory StateMap({
    // 계좌현황 State ---
    // 종목 수
    int? ingInfiniteCount,
    // 배정 시드 총합
    double? sumInfiniteSeed,
    // 원금
    double? sumAccountSeed,
    // 총 매입 금액
    double? sumInfiniteBuyPrice,
  }) = _StateMap;

  factory StateMap.fromJson(Map<String, dynamic> json) => _$StateMapFromJson(json);
}