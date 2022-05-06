// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'infinite_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfiniteDetail _$InfiniteDetailFromJson(Map<String, dynamic> json) {
  return _InfiniteDetail.fromJson(json);
}

/// @nodoc
class _$InfiniteDetailTearOff {
  const _$InfiniteDetailTearOff();

  _InfiniteDetail call(
      {Stock? stockDetail,
      double? seed,
      int? holdingQuantity,
      int? realFeesPer,
      double? oneBuySeed,
      double? evalPrice,
      double? averagePrice,
      double? buyPrice,
      double? income,
      double? incomePer,
      double? progressPer}) {
    return _InfiniteDetail(
      stockDetail: stockDetail,
      seed: seed,
      holdingQuantity: holdingQuantity,
      realFeesPer: realFeesPer,
      oneBuySeed: oneBuySeed,
      evalPrice: evalPrice,
      averagePrice: averagePrice,
      buyPrice: buyPrice,
      income: income,
      incomePer: incomePer,
      progressPer: progressPer,
    );
  }

  InfiniteDetail fromJson(Map<String, Object?> json) {
    return InfiniteDetail.fromJson(json);
  }
}

/// @nodoc
const $InfiniteDetail = _$InfiniteDetailTearOff();

/// @nodoc
mixin _$InfiniteDetail {
// 해당 심볼 주가 정보
  Stock? get stockDetail =>
      throw _privateConstructorUsedError; // 해당 심볼 주가 history
// 매매 내역 리스트
// 매수 예약 정보 리스트
// 매도 예약 정보 리스트
// 평단가 변화 리스트
// 종목 배정 시드
  double? get seed => throw _privateConstructorUsedError; // 수량
  int? get holdingQuantity =>
      throw _privateConstructorUsedError; // 계산용 수수료율 (수수료율 * 0.01)
  int? get realFeesPer => throw _privateConstructorUsedError; // 1회 매수 금액
  double? get oneBuySeed =>
      throw _privateConstructorUsedError; // 평가금액 : 종가 * 보유수량
  double? get evalPrice => throw _privateConstructorUsedError; // 평단가
  double? get averagePrice => throw _privateConstructorUsedError; // 일별 평단가 리스트
// 매입금액
  double? get buyPrice => throw _privateConstructorUsedError; // 손익금
  double? get income => throw _privateConstructorUsedError; // 손익률
  double? get incomePer => throw _privateConstructorUsedError; // 진행률
  double? get progressPer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfiniteDetailCopyWith<InfiniteDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfiniteDetailCopyWith<$Res> {
  factory $InfiniteDetailCopyWith(
          InfiniteDetail value, $Res Function(InfiniteDetail) then) =
      _$InfiniteDetailCopyWithImpl<$Res>;
  $Res call(
      {Stock? stockDetail,
      double? seed,
      int? holdingQuantity,
      int? realFeesPer,
      double? oneBuySeed,
      double? evalPrice,
      double? averagePrice,
      double? buyPrice,
      double? income,
      double? incomePer,
      double? progressPer});

  $StockCopyWith<$Res>? get stockDetail;
}

/// @nodoc
class _$InfiniteDetailCopyWithImpl<$Res>
    implements $InfiniteDetailCopyWith<$Res> {
  _$InfiniteDetailCopyWithImpl(this._value, this._then);

  final InfiniteDetail _value;
  // ignore: unused_field
  final $Res Function(InfiniteDetail) _then;

  @override
  $Res call({
    Object? stockDetail = freezed,
    Object? seed = freezed,
    Object? holdingQuantity = freezed,
    Object? realFeesPer = freezed,
    Object? oneBuySeed = freezed,
    Object? evalPrice = freezed,
    Object? averagePrice = freezed,
    Object? buyPrice = freezed,
    Object? income = freezed,
    Object? incomePer = freezed,
    Object? progressPer = freezed,
  }) {
    return _then(_value.copyWith(
      stockDetail: stockDetail == freezed
          ? _value.stockDetail
          : stockDetail // ignore: cast_nullable_to_non_nullable
              as Stock?,
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as double?,
      holdingQuantity: holdingQuantity == freezed
          ? _value.holdingQuantity
          : holdingQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      realFeesPer: realFeesPer == freezed
          ? _value.realFeesPer
          : realFeesPer // ignore: cast_nullable_to_non_nullable
              as int?,
      oneBuySeed: oneBuySeed == freezed
          ? _value.oneBuySeed
          : oneBuySeed // ignore: cast_nullable_to_non_nullable
              as double?,
      evalPrice: evalPrice == freezed
          ? _value.evalPrice
          : evalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      averagePrice: averagePrice == freezed
          ? _value.averagePrice
          : averagePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      buyPrice: buyPrice == freezed
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double?,
      incomePer: incomePer == freezed
          ? _value.incomePer
          : incomePer // ignore: cast_nullable_to_non_nullable
              as double?,
      progressPer: progressPer == freezed
          ? _value.progressPer
          : progressPer // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $StockCopyWith<$Res>? get stockDetail {
    if (_value.stockDetail == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.stockDetail!, (value) {
      return _then(_value.copyWith(stockDetail: value));
    });
  }
}

/// @nodoc
abstract class _$InfiniteDetailCopyWith<$Res>
    implements $InfiniteDetailCopyWith<$Res> {
  factory _$InfiniteDetailCopyWith(
          _InfiniteDetail value, $Res Function(_InfiniteDetail) then) =
      __$InfiniteDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stock? stockDetail,
      double? seed,
      int? holdingQuantity,
      int? realFeesPer,
      double? oneBuySeed,
      double? evalPrice,
      double? averagePrice,
      double? buyPrice,
      double? income,
      double? incomePer,
      double? progressPer});

  @override
  $StockCopyWith<$Res>? get stockDetail;
}

/// @nodoc
class __$InfiniteDetailCopyWithImpl<$Res>
    extends _$InfiniteDetailCopyWithImpl<$Res>
    implements _$InfiniteDetailCopyWith<$Res> {
  __$InfiniteDetailCopyWithImpl(
      _InfiniteDetail _value, $Res Function(_InfiniteDetail) _then)
      : super(_value, (v) => _then(v as _InfiniteDetail));

  @override
  _InfiniteDetail get _value => super._value as _InfiniteDetail;

  @override
  $Res call({
    Object? stockDetail = freezed,
    Object? seed = freezed,
    Object? holdingQuantity = freezed,
    Object? realFeesPer = freezed,
    Object? oneBuySeed = freezed,
    Object? evalPrice = freezed,
    Object? averagePrice = freezed,
    Object? buyPrice = freezed,
    Object? income = freezed,
    Object? incomePer = freezed,
    Object? progressPer = freezed,
  }) {
    return _then(_InfiniteDetail(
      stockDetail: stockDetail == freezed
          ? _value.stockDetail
          : stockDetail // ignore: cast_nullable_to_non_nullable
              as Stock?,
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as double?,
      holdingQuantity: holdingQuantity == freezed
          ? _value.holdingQuantity
          : holdingQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      realFeesPer: realFeesPer == freezed
          ? _value.realFeesPer
          : realFeesPer // ignore: cast_nullable_to_non_nullable
              as int?,
      oneBuySeed: oneBuySeed == freezed
          ? _value.oneBuySeed
          : oneBuySeed // ignore: cast_nullable_to_non_nullable
              as double?,
      evalPrice: evalPrice == freezed
          ? _value.evalPrice
          : evalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      averagePrice: averagePrice == freezed
          ? _value.averagePrice
          : averagePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      buyPrice: buyPrice == freezed
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double?,
      incomePer: incomePer == freezed
          ? _value.incomePer
          : incomePer // ignore: cast_nullable_to_non_nullable
              as double?,
      progressPer: progressPer == freezed
          ? _value.progressPer
          : progressPer // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InfiniteDetail implements _InfiniteDetail {
  _$_InfiniteDetail(
      {this.stockDetail,
      this.seed,
      this.holdingQuantity,
      this.realFeesPer,
      this.oneBuySeed,
      this.evalPrice,
      this.averagePrice,
      this.buyPrice,
      this.income,
      this.incomePer,
      this.progressPer});

  factory _$_InfiniteDetail.fromJson(Map<String, dynamic> json) =>
      _$$_InfiniteDetailFromJson(json);

  @override // 해당 심볼 주가 정보
  final Stock? stockDetail;
  @override // 해당 심볼 주가 history
// 매매 내역 리스트
// 매수 예약 정보 리스트
// 매도 예약 정보 리스트
// 평단가 변화 리스트
// 종목 배정 시드
  final double? seed;
  @override // 수량
  final int? holdingQuantity;
  @override // 계산용 수수료율 (수수료율 * 0.01)
  final int? realFeesPer;
  @override // 1회 매수 금액
  final double? oneBuySeed;
  @override // 평가금액 : 종가 * 보유수량
  final double? evalPrice;
  @override // 평단가
  final double? averagePrice;
  @override // 일별 평단가 리스트
// 매입금액
  final double? buyPrice;
  @override // 손익금
  final double? income;
  @override // 손익률
  final double? incomePer;
  @override // 진행률
  final double? progressPer;

  @override
  String toString() {
    return 'InfiniteDetail(stockDetail: $stockDetail, seed: $seed, holdingQuantity: $holdingQuantity, realFeesPer: $realFeesPer, oneBuySeed: $oneBuySeed, evalPrice: $evalPrice, averagePrice: $averagePrice, buyPrice: $buyPrice, income: $income, incomePer: $incomePer, progressPer: $progressPer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InfiniteDetail &&
            const DeepCollectionEquality()
                .equals(other.stockDetail, stockDetail) &&
            const DeepCollectionEquality().equals(other.seed, seed) &&
            const DeepCollectionEquality()
                .equals(other.holdingQuantity, holdingQuantity) &&
            const DeepCollectionEquality()
                .equals(other.realFeesPer, realFeesPer) &&
            const DeepCollectionEquality()
                .equals(other.oneBuySeed, oneBuySeed) &&
            const DeepCollectionEquality().equals(other.evalPrice, evalPrice) &&
            const DeepCollectionEquality()
                .equals(other.averagePrice, averagePrice) &&
            const DeepCollectionEquality().equals(other.buyPrice, buyPrice) &&
            const DeepCollectionEquality().equals(other.income, income) &&
            const DeepCollectionEquality().equals(other.incomePer, incomePer) &&
            const DeepCollectionEquality()
                .equals(other.progressPer, progressPer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stockDetail),
      const DeepCollectionEquality().hash(seed),
      const DeepCollectionEquality().hash(holdingQuantity),
      const DeepCollectionEquality().hash(realFeesPer),
      const DeepCollectionEquality().hash(oneBuySeed),
      const DeepCollectionEquality().hash(evalPrice),
      const DeepCollectionEquality().hash(averagePrice),
      const DeepCollectionEquality().hash(buyPrice),
      const DeepCollectionEquality().hash(income),
      const DeepCollectionEquality().hash(incomePer),
      const DeepCollectionEquality().hash(progressPer));

  @JsonKey(ignore: true)
  @override
  _$InfiniteDetailCopyWith<_InfiniteDetail> get copyWith =>
      __$InfiniteDetailCopyWithImpl<_InfiniteDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfiniteDetailToJson(this);
  }
}

abstract class _InfiniteDetail implements InfiniteDetail {
  factory _InfiniteDetail(
      {Stock? stockDetail,
      double? seed,
      int? holdingQuantity,
      int? realFeesPer,
      double? oneBuySeed,
      double? evalPrice,
      double? averagePrice,
      double? buyPrice,
      double? income,
      double? incomePer,
      double? progressPer}) = _$_InfiniteDetail;

  factory _InfiniteDetail.fromJson(Map<String, dynamic> json) =
      _$_InfiniteDetail.fromJson;

  @override // 해당 심볼 주가 정보
  Stock? get stockDetail;
  @override // 해당 심볼 주가 history
// 매매 내역 리스트
// 매수 예약 정보 리스트
// 매도 예약 정보 리스트
// 평단가 변화 리스트
// 종목 배정 시드
  double? get seed;
  @override // 수량
  int? get holdingQuantity;
  @override // 계산용 수수료율 (수수료율 * 0.01)
  int? get realFeesPer;
  @override // 1회 매수 금액
  double? get oneBuySeed;
  @override // 평가금액 : 종가 * 보유수량
  double? get evalPrice;
  @override // 평단가
  double? get averagePrice;
  @override // 일별 평단가 리스트
// 매입금액
  double? get buyPrice;
  @override // 손익금
  double? get income;
  @override // 손익률
  double? get incomePer;
  @override // 진행률
  double? get progressPer;
  @override
  @JsonKey(ignore: true)
  _$InfiniteDetailCopyWith<_InfiniteDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
