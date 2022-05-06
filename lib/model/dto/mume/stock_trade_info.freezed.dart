// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock_trade_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockTradeInfo _$StockTradeInfoFromJson(Map<String, dynamic> json) {
  return _StockTradeInfo.fromJson(json);
}

/// @nodoc
class _$StockTradeInfoTearOff {
  const _$StockTradeInfoTearOff();

  _StockTradeInfo call(
      {String? tradeName, double? price, int? quantity, String? concludeType}) {
    return _StockTradeInfo(
      tradeName: tradeName,
      price: price,
      quantity: quantity,
      concludeType: concludeType,
    );
  }

  StockTradeInfo fromJson(Map<String, Object?> json) {
    return StockTradeInfo.fromJson(json);
  }
}

/// @nodoc
const $StockTradeInfo = _$StockTradeInfoTearOff();

/// @nodoc
mixin _$StockTradeInfo {
  String? get tradeName => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get concludeType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockTradeInfoCopyWith<StockTradeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockTradeInfoCopyWith<$Res> {
  factory $StockTradeInfoCopyWith(
          StockTradeInfo value, $Res Function(StockTradeInfo) then) =
      _$StockTradeInfoCopyWithImpl<$Res>;
  $Res call(
      {String? tradeName, double? price, int? quantity, String? concludeType});
}

/// @nodoc
class _$StockTradeInfoCopyWithImpl<$Res>
    implements $StockTradeInfoCopyWith<$Res> {
  _$StockTradeInfoCopyWithImpl(this._value, this._then);

  final StockTradeInfo _value;
  // ignore: unused_field
  final $Res Function(StockTradeInfo) _then;

  @override
  $Res call({
    Object? tradeName = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? concludeType = freezed,
  }) {
    return _then(_value.copyWith(
      tradeName: tradeName == freezed
          ? _value.tradeName
          : tradeName // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      concludeType: concludeType == freezed
          ? _value.concludeType
          : concludeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StockTradeInfoCopyWith<$Res>
    implements $StockTradeInfoCopyWith<$Res> {
  factory _$StockTradeInfoCopyWith(
          _StockTradeInfo value, $Res Function(_StockTradeInfo) then) =
      __$StockTradeInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? tradeName, double? price, int? quantity, String? concludeType});
}

/// @nodoc
class __$StockTradeInfoCopyWithImpl<$Res>
    extends _$StockTradeInfoCopyWithImpl<$Res>
    implements _$StockTradeInfoCopyWith<$Res> {
  __$StockTradeInfoCopyWithImpl(
      _StockTradeInfo _value, $Res Function(_StockTradeInfo) _then)
      : super(_value, (v) => _then(v as _StockTradeInfo));

  @override
  _StockTradeInfo get _value => super._value as _StockTradeInfo;

  @override
  $Res call({
    Object? tradeName = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? concludeType = freezed,
  }) {
    return _then(_StockTradeInfo(
      tradeName: tradeName == freezed
          ? _value.tradeName
          : tradeName // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      concludeType: concludeType == freezed
          ? _value.concludeType
          : concludeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockTradeInfo implements _StockTradeInfo {
  _$_StockTradeInfo(
      {this.tradeName, this.price, this.quantity, this.concludeType});

  factory _$_StockTradeInfo.fromJson(Map<String, dynamic> json) =>
      _$$_StockTradeInfoFromJson(json);

  @override
  final String? tradeName;
  @override
  final double? price;
  @override
  final int? quantity;
  @override
  final String? concludeType;

  @override
  String toString() {
    return 'StockTradeInfo(tradeName: $tradeName, price: $price, quantity: $quantity, concludeType: $concludeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockTradeInfo &&
            const DeepCollectionEquality().equals(other.tradeName, tradeName) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.concludeType, concludeType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tradeName),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(concludeType));

  @JsonKey(ignore: true)
  @override
  _$StockTradeInfoCopyWith<_StockTradeInfo> get copyWith =>
      __$StockTradeInfoCopyWithImpl<_StockTradeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockTradeInfoToJson(this);
  }
}

abstract class _StockTradeInfo implements StockTradeInfo {
  factory _StockTradeInfo(
      {String? tradeName,
      double? price,
      int? quantity,
      String? concludeType}) = _$_StockTradeInfo;

  factory _StockTradeInfo.fromJson(Map<String, dynamic> json) =
      _$_StockTradeInfo.fromJson;

  @override
  String? get tradeName;
  @override
  double? get price;
  @override
  int? get quantity;
  @override
  String? get concludeType;
  @override
  @JsonKey(ignore: true)
  _$StockTradeInfoCopyWith<_StockTradeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
