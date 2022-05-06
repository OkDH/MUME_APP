// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StateMap _$StateMapFromJson(Map<String, dynamic> json) {
  return _StateMap.fromJson(json);
}

/// @nodoc
class _$StateMapTearOff {
  const _$StateMapTearOff();

  _StateMap call(
      {int? ingInfiniteCount,
      double? sumInfiniteSeed,
      double? sumAccountSeed,
      double? sumInfiniteBuyPrice}) {
    return _StateMap(
      ingInfiniteCount: ingInfiniteCount,
      sumInfiniteSeed: sumInfiniteSeed,
      sumAccountSeed: sumAccountSeed,
      sumInfiniteBuyPrice: sumInfiniteBuyPrice,
    );
  }

  StateMap fromJson(Map<String, Object?> json) {
    return StateMap.fromJson(json);
  }
}

/// @nodoc
const $StateMap = _$StateMapTearOff();

/// @nodoc
mixin _$StateMap {
// 계좌현황 State ---
// 종목 수
  int? get ingInfiniteCount => throw _privateConstructorUsedError; // 배정 시드 총합
  double? get sumInfiniteSeed => throw _privateConstructorUsedError; // 원금
  double? get sumAccountSeed => throw _privateConstructorUsedError; // 총 매입 금액
  double? get sumInfiniteBuyPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateMapCopyWith<StateMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateMapCopyWith<$Res> {
  factory $StateMapCopyWith(StateMap value, $Res Function(StateMap) then) =
      _$StateMapCopyWithImpl<$Res>;
  $Res call(
      {int? ingInfiniteCount,
      double? sumInfiniteSeed,
      double? sumAccountSeed,
      double? sumInfiniteBuyPrice});
}

/// @nodoc
class _$StateMapCopyWithImpl<$Res> implements $StateMapCopyWith<$Res> {
  _$StateMapCopyWithImpl(this._value, this._then);

  final StateMap _value;
  // ignore: unused_field
  final $Res Function(StateMap) _then;

  @override
  $Res call({
    Object? ingInfiniteCount = freezed,
    Object? sumInfiniteSeed = freezed,
    Object? sumAccountSeed = freezed,
    Object? sumInfiniteBuyPrice = freezed,
  }) {
    return _then(_value.copyWith(
      ingInfiniteCount: ingInfiniteCount == freezed
          ? _value.ingInfiniteCount
          : ingInfiniteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sumInfiniteSeed: sumInfiniteSeed == freezed
          ? _value.sumInfiniteSeed
          : sumInfiniteSeed // ignore: cast_nullable_to_non_nullable
              as double?,
      sumAccountSeed: sumAccountSeed == freezed
          ? _value.sumAccountSeed
          : sumAccountSeed // ignore: cast_nullable_to_non_nullable
              as double?,
      sumInfiniteBuyPrice: sumInfiniteBuyPrice == freezed
          ? _value.sumInfiniteBuyPrice
          : sumInfiniteBuyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$StateMapCopyWith<$Res> implements $StateMapCopyWith<$Res> {
  factory _$StateMapCopyWith(_StateMap value, $Res Function(_StateMap) then) =
      __$StateMapCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? ingInfiniteCount,
      double? sumInfiniteSeed,
      double? sumAccountSeed,
      double? sumInfiniteBuyPrice});
}

/// @nodoc
class __$StateMapCopyWithImpl<$Res> extends _$StateMapCopyWithImpl<$Res>
    implements _$StateMapCopyWith<$Res> {
  __$StateMapCopyWithImpl(_StateMap _value, $Res Function(_StateMap) _then)
      : super(_value, (v) => _then(v as _StateMap));

  @override
  _StateMap get _value => super._value as _StateMap;

  @override
  $Res call({
    Object? ingInfiniteCount = freezed,
    Object? sumInfiniteSeed = freezed,
    Object? sumAccountSeed = freezed,
    Object? sumInfiniteBuyPrice = freezed,
  }) {
    return _then(_StateMap(
      ingInfiniteCount: ingInfiniteCount == freezed
          ? _value.ingInfiniteCount
          : ingInfiniteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sumInfiniteSeed: sumInfiniteSeed == freezed
          ? _value.sumInfiniteSeed
          : sumInfiniteSeed // ignore: cast_nullable_to_non_nullable
              as double?,
      sumAccountSeed: sumAccountSeed == freezed
          ? _value.sumAccountSeed
          : sumAccountSeed // ignore: cast_nullable_to_non_nullable
              as double?,
      sumInfiniteBuyPrice: sumInfiniteBuyPrice == freezed
          ? _value.sumInfiniteBuyPrice
          : sumInfiniteBuyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StateMap with DiagnosticableTreeMixin implements _StateMap {
  _$_StateMap(
      {this.ingInfiniteCount,
      this.sumInfiniteSeed,
      this.sumAccountSeed,
      this.sumInfiniteBuyPrice});

  factory _$_StateMap.fromJson(Map<String, dynamic> json) =>
      _$$_StateMapFromJson(json);

  @override // 계좌현황 State ---
// 종목 수
  final int? ingInfiniteCount;
  @override // 배정 시드 총합
  final double? sumInfiniteSeed;
  @override // 원금
  final double? sumAccountSeed;
  @override // 총 매입 금액
  final double? sumInfiniteBuyPrice;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateMap(ingInfiniteCount: $ingInfiniteCount, sumInfiniteSeed: $sumInfiniteSeed, sumAccountSeed: $sumAccountSeed, sumInfiniteBuyPrice: $sumInfiniteBuyPrice)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateMap'))
      ..add(DiagnosticsProperty('ingInfiniteCount', ingInfiniteCount))
      ..add(DiagnosticsProperty('sumInfiniteSeed', sumInfiniteSeed))
      ..add(DiagnosticsProperty('sumAccountSeed', sumAccountSeed))
      ..add(DiagnosticsProperty('sumInfiniteBuyPrice', sumInfiniteBuyPrice));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StateMap &&
            const DeepCollectionEquality()
                .equals(other.ingInfiniteCount, ingInfiniteCount) &&
            const DeepCollectionEquality()
                .equals(other.sumInfiniteSeed, sumInfiniteSeed) &&
            const DeepCollectionEquality()
                .equals(other.sumAccountSeed, sumAccountSeed) &&
            const DeepCollectionEquality()
                .equals(other.sumInfiniteBuyPrice, sumInfiniteBuyPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ingInfiniteCount),
      const DeepCollectionEquality().hash(sumInfiniteSeed),
      const DeepCollectionEquality().hash(sumAccountSeed),
      const DeepCollectionEquality().hash(sumInfiniteBuyPrice));

  @JsonKey(ignore: true)
  @override
  _$StateMapCopyWith<_StateMap> get copyWith =>
      __$StateMapCopyWithImpl<_StateMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateMapToJson(this);
  }
}

abstract class _StateMap implements StateMap {
  factory _StateMap(
      {int? ingInfiniteCount,
      double? sumInfiniteSeed,
      double? sumAccountSeed,
      double? sumInfiniteBuyPrice}) = _$_StateMap;

  factory _StateMap.fromJson(Map<String, dynamic> json) = _$_StateMap.fromJson;

  @override // 계좌현황 State ---
// 종목 수
  int? get ingInfiniteCount;
  @override // 배정 시드 총합
  double? get sumInfiniteSeed;
  @override // 원금
  double? get sumAccountSeed;
  @override // 총 매입 금액
  double? get sumInfiniteBuyPrice;
  @override
  @JsonKey(ignore: true)
  _$StateMapCopyWith<_StateMap> get copyWith =>
      throw _privateConstructorUsedError;
}
