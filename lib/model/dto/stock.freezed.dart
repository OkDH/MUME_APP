// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stock _$StockFromJson(Map<String, dynamic> json) {
  return _Stock.fromJson(json);
}

/// @nodoc
class _$StockTearOff {
  const _$StockTearOff();

  _Stock call(
      {String? symbol,
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
      double? gapRsi}) {
    return _Stock(
      symbol: symbol,
      stockDate: stockDate,
      priceHigh: priceHigh,
      priceLow: priceLow,
      priceClose: priceClose,
      priceOpen: priceOpen,
      prevClose: prevClose,
      chg: chg,
      chgp: chgp,
      volume: volume,
      upAvg: upAvg,
      dwAvg: dwAvg,
      rsi: rsi,
      updateTime: updateTime,
      sector: sector,
      sectorName: sectorName,
      baseRsi: baseRsi,
      isWarn: isWarn,
      lastTradeTime: lastTradeTime,
      gapRsi: gapRsi,
    );
  }

  Stock fromJson(Map<String, Object?> json) {
    return Stock.fromJson(json);
  }
}

/// @nodoc
const $Stock = _$StockTearOff();

/// @nodoc
mixin _$Stock {
  String? get symbol => throw _privateConstructorUsedError;
  String? get stockDate => throw _privateConstructorUsedError;
  double? get priceHigh => throw _privateConstructorUsedError;
  double? get priceLow => throw _privateConstructorUsedError;
  double? get priceClose => throw _privateConstructorUsedError;
  double? get priceOpen => throw _privateConstructorUsedError;
  double? get prevClose => throw _privateConstructorUsedError;
  double? get chg => throw _privateConstructorUsedError;
  double? get chgp => throw _privateConstructorUsedError;
  double? get volume => throw _privateConstructorUsedError;
  double? get upAvg => throw _privateConstructorUsedError;
  double? get dwAvg => throw _privateConstructorUsedError;
  double? get rsi => throw _privateConstructorUsedError;
  String? get updateTime => throw _privateConstructorUsedError;
  String? get sector => throw _privateConstructorUsedError;
  String? get sectorName => throw _privateConstructorUsedError;
  double? get baseRsi => throw _privateConstructorUsedError;
  bool? get isWarn => throw _privateConstructorUsedError;
  String? get lastTradeTime => throw _privateConstructorUsedError;
  double? get gapRsi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockCopyWith<Stock> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockCopyWith<$Res> {
  factory $StockCopyWith(Stock value, $Res Function(Stock) then) =
      _$StockCopyWithImpl<$Res>;
  $Res call(
      {String? symbol,
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
      double? gapRsi});
}

/// @nodoc
class _$StockCopyWithImpl<$Res> implements $StockCopyWith<$Res> {
  _$StockCopyWithImpl(this._value, this._then);

  final Stock _value;
  // ignore: unused_field
  final $Res Function(Stock) _then;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? stockDate = freezed,
    Object? priceHigh = freezed,
    Object? priceLow = freezed,
    Object? priceClose = freezed,
    Object? priceOpen = freezed,
    Object? prevClose = freezed,
    Object? chg = freezed,
    Object? chgp = freezed,
    Object? volume = freezed,
    Object? upAvg = freezed,
    Object? dwAvg = freezed,
    Object? rsi = freezed,
    Object? updateTime = freezed,
    Object? sector = freezed,
    Object? sectorName = freezed,
    Object? baseRsi = freezed,
    Object? isWarn = freezed,
    Object? lastTradeTime = freezed,
    Object? gapRsi = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      stockDate: stockDate == freezed
          ? _value.stockDate
          : stockDate // ignore: cast_nullable_to_non_nullable
              as String?,
      priceHigh: priceHigh == freezed
          ? _value.priceHigh
          : priceHigh // ignore: cast_nullable_to_non_nullable
              as double?,
      priceLow: priceLow == freezed
          ? _value.priceLow
          : priceLow // ignore: cast_nullable_to_non_nullable
              as double?,
      priceClose: priceClose == freezed
          ? _value.priceClose
          : priceClose // ignore: cast_nullable_to_non_nullable
              as double?,
      priceOpen: priceOpen == freezed
          ? _value.priceOpen
          : priceOpen // ignore: cast_nullable_to_non_nullable
              as double?,
      prevClose: prevClose == freezed
          ? _value.prevClose
          : prevClose // ignore: cast_nullable_to_non_nullable
              as double?,
      chg: chg == freezed
          ? _value.chg
          : chg // ignore: cast_nullable_to_non_nullable
              as double?,
      chgp: chgp == freezed
          ? _value.chgp
          : chgp // ignore: cast_nullable_to_non_nullable
              as double?,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double?,
      upAvg: upAvg == freezed
          ? _value.upAvg
          : upAvg // ignore: cast_nullable_to_non_nullable
              as double?,
      dwAvg: dwAvg == freezed
          ? _value.dwAvg
          : dwAvg // ignore: cast_nullable_to_non_nullable
              as double?,
      rsi: rsi == freezed
          ? _value.rsi
          : rsi // ignore: cast_nullable_to_non_nullable
              as double?,
      updateTime: updateTime == freezed
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sector: sector == freezed
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String?,
      sectorName: sectorName == freezed
          ? _value.sectorName
          : sectorName // ignore: cast_nullable_to_non_nullable
              as String?,
      baseRsi: baseRsi == freezed
          ? _value.baseRsi
          : baseRsi // ignore: cast_nullable_to_non_nullable
              as double?,
      isWarn: isWarn == freezed
          ? _value.isWarn
          : isWarn // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastTradeTime: lastTradeTime == freezed
          ? _value.lastTradeTime
          : lastTradeTime // ignore: cast_nullable_to_non_nullable
              as String?,
      gapRsi: gapRsi == freezed
          ? _value.gapRsi
          : gapRsi // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$StockCopyWith<$Res> implements $StockCopyWith<$Res> {
  factory _$StockCopyWith(_Stock value, $Res Function(_Stock) then) =
      __$StockCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? symbol,
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
      double? gapRsi});
}

/// @nodoc
class __$StockCopyWithImpl<$Res> extends _$StockCopyWithImpl<$Res>
    implements _$StockCopyWith<$Res> {
  __$StockCopyWithImpl(_Stock _value, $Res Function(_Stock) _then)
      : super(_value, (v) => _then(v as _Stock));

  @override
  _Stock get _value => super._value as _Stock;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? stockDate = freezed,
    Object? priceHigh = freezed,
    Object? priceLow = freezed,
    Object? priceClose = freezed,
    Object? priceOpen = freezed,
    Object? prevClose = freezed,
    Object? chg = freezed,
    Object? chgp = freezed,
    Object? volume = freezed,
    Object? upAvg = freezed,
    Object? dwAvg = freezed,
    Object? rsi = freezed,
    Object? updateTime = freezed,
    Object? sector = freezed,
    Object? sectorName = freezed,
    Object? baseRsi = freezed,
    Object? isWarn = freezed,
    Object? lastTradeTime = freezed,
    Object? gapRsi = freezed,
  }) {
    return _then(_Stock(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      stockDate: stockDate == freezed
          ? _value.stockDate
          : stockDate // ignore: cast_nullable_to_non_nullable
              as String?,
      priceHigh: priceHigh == freezed
          ? _value.priceHigh
          : priceHigh // ignore: cast_nullable_to_non_nullable
              as double?,
      priceLow: priceLow == freezed
          ? _value.priceLow
          : priceLow // ignore: cast_nullable_to_non_nullable
              as double?,
      priceClose: priceClose == freezed
          ? _value.priceClose
          : priceClose // ignore: cast_nullable_to_non_nullable
              as double?,
      priceOpen: priceOpen == freezed
          ? _value.priceOpen
          : priceOpen // ignore: cast_nullable_to_non_nullable
              as double?,
      prevClose: prevClose == freezed
          ? _value.prevClose
          : prevClose // ignore: cast_nullable_to_non_nullable
              as double?,
      chg: chg == freezed
          ? _value.chg
          : chg // ignore: cast_nullable_to_non_nullable
              as double?,
      chgp: chgp == freezed
          ? _value.chgp
          : chgp // ignore: cast_nullable_to_non_nullable
              as double?,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double?,
      upAvg: upAvg == freezed
          ? _value.upAvg
          : upAvg // ignore: cast_nullable_to_non_nullable
              as double?,
      dwAvg: dwAvg == freezed
          ? _value.dwAvg
          : dwAvg // ignore: cast_nullable_to_non_nullable
              as double?,
      rsi: rsi == freezed
          ? _value.rsi
          : rsi // ignore: cast_nullable_to_non_nullable
              as double?,
      updateTime: updateTime == freezed
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sector: sector == freezed
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String?,
      sectorName: sectorName == freezed
          ? _value.sectorName
          : sectorName // ignore: cast_nullable_to_non_nullable
              as String?,
      baseRsi: baseRsi == freezed
          ? _value.baseRsi
          : baseRsi // ignore: cast_nullable_to_non_nullable
              as double?,
      isWarn: isWarn == freezed
          ? _value.isWarn
          : isWarn // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastTradeTime: lastTradeTime == freezed
          ? _value.lastTradeTime
          : lastTradeTime // ignore: cast_nullable_to_non_nullable
              as String?,
      gapRsi: gapRsi == freezed
          ? _value.gapRsi
          : gapRsi // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stock implements _Stock {
  _$_Stock(
      {this.symbol,
      this.stockDate,
      this.priceHigh,
      this.priceLow,
      this.priceClose,
      this.priceOpen,
      this.prevClose,
      this.chg,
      this.chgp,
      this.volume,
      this.upAvg,
      this.dwAvg,
      this.rsi,
      this.updateTime,
      this.sector,
      this.sectorName,
      this.baseRsi,
      this.isWarn,
      this.lastTradeTime,
      this.gapRsi});

  factory _$_Stock.fromJson(Map<String, dynamic> json) =>
      _$$_StockFromJson(json);

  @override
  final String? symbol;
  @override
  final String? stockDate;
  @override
  final double? priceHigh;
  @override
  final double? priceLow;
  @override
  final double? priceClose;
  @override
  final double? priceOpen;
  @override
  final double? prevClose;
  @override
  final double? chg;
  @override
  final double? chgp;
  @override
  final double? volume;
  @override
  final double? upAvg;
  @override
  final double? dwAvg;
  @override
  final double? rsi;
  @override
  final String? updateTime;
  @override
  final String? sector;
  @override
  final String? sectorName;
  @override
  final double? baseRsi;
  @override
  final bool? isWarn;
  @override
  final String? lastTradeTime;
  @override
  final double? gapRsi;

  @override
  String toString() {
    return 'Stock(symbol: $symbol, stockDate: $stockDate, priceHigh: $priceHigh, priceLow: $priceLow, priceClose: $priceClose, priceOpen: $priceOpen, prevClose: $prevClose, chg: $chg, chgp: $chgp, volume: $volume, upAvg: $upAvg, dwAvg: $dwAvg, rsi: $rsi, updateTime: $updateTime, sector: $sector, sectorName: $sectorName, baseRsi: $baseRsi, isWarn: $isWarn, lastTradeTime: $lastTradeTime, gapRsi: $gapRsi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Stock &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.stockDate, stockDate) &&
            const DeepCollectionEquality().equals(other.priceHigh, priceHigh) &&
            const DeepCollectionEquality().equals(other.priceLow, priceLow) &&
            const DeepCollectionEquality()
                .equals(other.priceClose, priceClose) &&
            const DeepCollectionEquality().equals(other.priceOpen, priceOpen) &&
            const DeepCollectionEquality().equals(other.prevClose, prevClose) &&
            const DeepCollectionEquality().equals(other.chg, chg) &&
            const DeepCollectionEquality().equals(other.chgp, chgp) &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality().equals(other.upAvg, upAvg) &&
            const DeepCollectionEquality().equals(other.dwAvg, dwAvg) &&
            const DeepCollectionEquality().equals(other.rsi, rsi) &&
            const DeepCollectionEquality()
                .equals(other.updateTime, updateTime) &&
            const DeepCollectionEquality().equals(other.sector, sector) &&
            const DeepCollectionEquality()
                .equals(other.sectorName, sectorName) &&
            const DeepCollectionEquality().equals(other.baseRsi, baseRsi) &&
            const DeepCollectionEquality().equals(other.isWarn, isWarn) &&
            const DeepCollectionEquality()
                .equals(other.lastTradeTime, lastTradeTime) &&
            const DeepCollectionEquality().equals(other.gapRsi, gapRsi));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(symbol),
        const DeepCollectionEquality().hash(stockDate),
        const DeepCollectionEquality().hash(priceHigh),
        const DeepCollectionEquality().hash(priceLow),
        const DeepCollectionEquality().hash(priceClose),
        const DeepCollectionEquality().hash(priceOpen),
        const DeepCollectionEquality().hash(prevClose),
        const DeepCollectionEquality().hash(chg),
        const DeepCollectionEquality().hash(chgp),
        const DeepCollectionEquality().hash(volume),
        const DeepCollectionEquality().hash(upAvg),
        const DeepCollectionEquality().hash(dwAvg),
        const DeepCollectionEquality().hash(rsi),
        const DeepCollectionEquality().hash(updateTime),
        const DeepCollectionEquality().hash(sector),
        const DeepCollectionEquality().hash(sectorName),
        const DeepCollectionEquality().hash(baseRsi),
        const DeepCollectionEquality().hash(isWarn),
        const DeepCollectionEquality().hash(lastTradeTime),
        const DeepCollectionEquality().hash(gapRsi)
      ]);

  @JsonKey(ignore: true)
  @override
  _$StockCopyWith<_Stock> get copyWith =>
      __$StockCopyWithImpl<_Stock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockToJson(this);
  }
}

abstract class _Stock implements Stock {
  factory _Stock(
      {String? symbol,
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
      double? gapRsi}) = _$_Stock;

  factory _Stock.fromJson(Map<String, dynamic> json) = _$_Stock.fromJson;

  @override
  String? get symbol;
  @override
  String? get stockDate;
  @override
  double? get priceHigh;
  @override
  double? get priceLow;
  @override
  double? get priceClose;
  @override
  double? get priceOpen;
  @override
  double? get prevClose;
  @override
  double? get chg;
  @override
  double? get chgp;
  @override
  double? get volume;
  @override
  double? get upAvg;
  @override
  double? get dwAvg;
  @override
  double? get rsi;
  @override
  String? get updateTime;
  @override
  String? get sector;
  @override
  String? get sectorName;
  @override
  double? get baseRsi;
  @override
  bool? get isWarn;
  @override
  String? get lastTradeTime;
  @override
  double? get gapRsi;
  @override
  @JsonKey(ignore: true)
  _$StockCopyWith<_Stock> get copyWith => throw _privateConstructorUsedError;
}
