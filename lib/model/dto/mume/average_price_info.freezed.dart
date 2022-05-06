// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'average_price_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AveragePriceInfo _$AveragePriceInfoFromJson(Map<String, dynamic> json) {
  return _AveragePriceInfo.fromJson(json);
}

/// @nodoc
class _$AveragePriceInfoTearOff {
  const _$AveragePriceInfoTearOff();

  _AveragePriceInfo call(
      {String? tradeDate, double? averagePrice, int? holdingQuantity}) {
    return _AveragePriceInfo(
      tradeDate: tradeDate,
      averagePrice: averagePrice,
      holdingQuantity: holdingQuantity,
    );
  }

  AveragePriceInfo fromJson(Map<String, Object?> json) {
    return AveragePriceInfo.fromJson(json);
  }
}

/// @nodoc
const $AveragePriceInfo = _$AveragePriceInfoTearOff();

/// @nodoc
mixin _$AveragePriceInfo {
  String? get tradeDate => throw _privateConstructorUsedError;
  double? get averagePrice => throw _privateConstructorUsedError;
  int? get holdingQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AveragePriceInfoCopyWith<AveragePriceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AveragePriceInfoCopyWith<$Res> {
  factory $AveragePriceInfoCopyWith(
          AveragePriceInfo value, $Res Function(AveragePriceInfo) then) =
      _$AveragePriceInfoCopyWithImpl<$Res>;
  $Res call({String? tradeDate, double? averagePrice, int? holdingQuantity});
}

/// @nodoc
class _$AveragePriceInfoCopyWithImpl<$Res>
    implements $AveragePriceInfoCopyWith<$Res> {
  _$AveragePriceInfoCopyWithImpl(this._value, this._then);

  final AveragePriceInfo _value;
  // ignore: unused_field
  final $Res Function(AveragePriceInfo) _then;

  @override
  $Res call({
    Object? tradeDate = freezed,
    Object? averagePrice = freezed,
    Object? holdingQuantity = freezed,
  }) {
    return _then(_value.copyWith(
      tradeDate: tradeDate == freezed
          ? _value.tradeDate
          : tradeDate // ignore: cast_nullable_to_non_nullable
              as String?,
      averagePrice: averagePrice == freezed
          ? _value.averagePrice
          : averagePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      holdingQuantity: holdingQuantity == freezed
          ? _value.holdingQuantity
          : holdingQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AveragePriceInfoCopyWith<$Res>
    implements $AveragePriceInfoCopyWith<$Res> {
  factory _$AveragePriceInfoCopyWith(
          _AveragePriceInfo value, $Res Function(_AveragePriceInfo) then) =
      __$AveragePriceInfoCopyWithImpl<$Res>;
  @override
  $Res call({String? tradeDate, double? averagePrice, int? holdingQuantity});
}

/// @nodoc
class __$AveragePriceInfoCopyWithImpl<$Res>
    extends _$AveragePriceInfoCopyWithImpl<$Res>
    implements _$AveragePriceInfoCopyWith<$Res> {
  __$AveragePriceInfoCopyWithImpl(
      _AveragePriceInfo _value, $Res Function(_AveragePriceInfo) _then)
      : super(_value, (v) => _then(v as _AveragePriceInfo));

  @override
  _AveragePriceInfo get _value => super._value as _AveragePriceInfo;

  @override
  $Res call({
    Object? tradeDate = freezed,
    Object? averagePrice = freezed,
    Object? holdingQuantity = freezed,
  }) {
    return _then(_AveragePriceInfo(
      tradeDate: tradeDate == freezed
          ? _value.tradeDate
          : tradeDate // ignore: cast_nullable_to_non_nullable
              as String?,
      averagePrice: averagePrice == freezed
          ? _value.averagePrice
          : averagePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      holdingQuantity: holdingQuantity == freezed
          ? _value.holdingQuantity
          : holdingQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AveragePriceInfo implements _AveragePriceInfo {
  _$_AveragePriceInfo(
      {this.tradeDate, this.averagePrice, this.holdingQuantity});

  factory _$_AveragePriceInfo.fromJson(Map<String, dynamic> json) =>
      _$$_AveragePriceInfoFromJson(json);

  @override
  final String? tradeDate;
  @override
  final double? averagePrice;
  @override
  final int? holdingQuantity;

  @override
  String toString() {
    return 'AveragePriceInfo(tradeDate: $tradeDate, averagePrice: $averagePrice, holdingQuantity: $holdingQuantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AveragePriceInfo &&
            const DeepCollectionEquality().equals(other.tradeDate, tradeDate) &&
            const DeepCollectionEquality()
                .equals(other.averagePrice, averagePrice) &&
            const DeepCollectionEquality()
                .equals(other.holdingQuantity, holdingQuantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tradeDate),
      const DeepCollectionEquality().hash(averagePrice),
      const DeepCollectionEquality().hash(holdingQuantity));

  @JsonKey(ignore: true)
  @override
  _$AveragePriceInfoCopyWith<_AveragePriceInfo> get copyWith =>
      __$AveragePriceInfoCopyWithImpl<_AveragePriceInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AveragePriceInfoToJson(this);
  }
}

abstract class _AveragePriceInfo implements AveragePriceInfo {
  factory _AveragePriceInfo(
      {String? tradeDate,
      double? averagePrice,
      int? holdingQuantity}) = _$_AveragePriceInfo;

  factory _AveragePriceInfo.fromJson(Map<String, dynamic> json) =
      _$_AveragePriceInfo.fromJson;

  @override
  String? get tradeDate;
  @override
  double? get averagePrice;
  @override
  int? get holdingQuantity;
  @override
  @JsonKey(ignore: true)
  _$AveragePriceInfoCopyWith<_AveragePriceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
