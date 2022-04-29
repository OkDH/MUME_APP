// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock_market_index.dart';

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

StockMarketIndex _$StockMarketIndexFromJson(Map<String, dynamic> json) {
  return _StockMarketIndex.fromJson(json);
}

/// @nodoc
class _$StockMarketIndexTearOff {
  const _$StockMarketIndexTearOff();

  _StockMarketIndex call(
      {@JsonKey(name: Strings.dji) Stock? dji,
      @JsonKey(name: Strings.ixic) Stock? ixic,
      @JsonKey(name: Strings.gspc) Stock? gspc,
      @JsonKey(name: Strings.sox) Stock? sox,
      @JsonKey(name: Strings.ymf) Stock? ymf,
      @JsonKey(name: Strings.nqf) Stock? nqf,
      @JsonKey(name: Strings.esf) Stock? esf,
      @JsonKey(name: Strings.rtyf) Stock? rtyf,
      @JsonKey(name: Strings.krwx) Stock? krwx,
      @JsonKey(name: Strings.clf) Stock? clf,
      @JsonKey(name: Strings.gcf) Stock? gcf,
      @JsonKey(name: Strings.sif) Stock? sif,
      @JsonKey(name: Strings.tnx) Stock? tnx,
      @JsonKey(name: Strings.vix) Stock? vix,
      @JsonKey(name: Strings.ks11) Stock? ks11,
      @JsonKey(name: Strings.kq11) Stock? kq11,
      @JsonKey(name: Strings.cnss) Stock? cnss,
      @JsonKey(name: Strings.n225) Stock? n225,
      @JsonKey(name: Strings.stoxx) Stock? stoxx,
      @JsonKey(name: Strings.btckrw) Stock? btckrw}) {
    return _StockMarketIndex(
      dji: dji,
      ixic: ixic,
      gspc: gspc,
      sox: sox,
      ymf: ymf,
      nqf: nqf,
      esf: esf,
      rtyf: rtyf,
      krwx: krwx,
      clf: clf,
      gcf: gcf,
      sif: sif,
      tnx: tnx,
      vix: vix,
      ks11: ks11,
      kq11: kq11,
      cnss: cnss,
      n225: n225,
      stoxx: stoxx,
      btckrw: btckrw,
    );
  }

  StockMarketIndex fromJson(Map<String, Object?> json) {
    return StockMarketIndex.fromJson(json);
  }
}

/// @nodoc
const $StockMarketIndex = _$StockMarketIndexTearOff();

/// @nodoc
mixin _$StockMarketIndex {
  @JsonKey(name: Strings.dji)
  Stock? get dji => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.ixic)
  Stock? get ixic => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.gspc)
  Stock? get gspc => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.sox)
  Stock? get sox => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.ymf)
  Stock? get ymf => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.nqf)
  Stock? get nqf => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.esf)
  Stock? get esf => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.rtyf)
  Stock? get rtyf => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.krwx)
  Stock? get krwx => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.clf)
  Stock? get clf => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.gcf)
  Stock? get gcf => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.sif)
  Stock? get sif => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.tnx)
  Stock? get tnx => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.vix)
  Stock? get vix => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.ks11)
  Stock? get ks11 => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.kq11)
  Stock? get kq11 => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.cnss)
  Stock? get cnss => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.n225)
  Stock? get n225 => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.stoxx)
  Stock? get stoxx => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.btckrw)
  Stock? get btckrw => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockMarketIndexCopyWith<StockMarketIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockMarketIndexCopyWith<$Res> {
  factory $StockMarketIndexCopyWith(
          StockMarketIndex value, $Res Function(StockMarketIndex) then) =
      _$StockMarketIndexCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: Strings.dji) Stock? dji,
      @JsonKey(name: Strings.ixic) Stock? ixic,
      @JsonKey(name: Strings.gspc) Stock? gspc,
      @JsonKey(name: Strings.sox) Stock? sox,
      @JsonKey(name: Strings.ymf) Stock? ymf,
      @JsonKey(name: Strings.nqf) Stock? nqf,
      @JsonKey(name: Strings.esf) Stock? esf,
      @JsonKey(name: Strings.rtyf) Stock? rtyf,
      @JsonKey(name: Strings.krwx) Stock? krwx,
      @JsonKey(name: Strings.clf) Stock? clf,
      @JsonKey(name: Strings.gcf) Stock? gcf,
      @JsonKey(name: Strings.sif) Stock? sif,
      @JsonKey(name: Strings.tnx) Stock? tnx,
      @JsonKey(name: Strings.vix) Stock? vix,
      @JsonKey(name: Strings.ks11) Stock? ks11,
      @JsonKey(name: Strings.kq11) Stock? kq11,
      @JsonKey(name: Strings.cnss) Stock? cnss,
      @JsonKey(name: Strings.n225) Stock? n225,
      @JsonKey(name: Strings.stoxx) Stock? stoxx,
      @JsonKey(name: Strings.btckrw) Stock? btckrw});

  $StockCopyWith<$Res>? get dji;
  $StockCopyWith<$Res>? get ixic;
  $StockCopyWith<$Res>? get gspc;
  $StockCopyWith<$Res>? get sox;
  $StockCopyWith<$Res>? get ymf;
  $StockCopyWith<$Res>? get nqf;
  $StockCopyWith<$Res>? get esf;
  $StockCopyWith<$Res>? get rtyf;
  $StockCopyWith<$Res>? get krwx;
  $StockCopyWith<$Res>? get clf;
  $StockCopyWith<$Res>? get gcf;
  $StockCopyWith<$Res>? get sif;
  $StockCopyWith<$Res>? get tnx;
  $StockCopyWith<$Res>? get vix;
  $StockCopyWith<$Res>? get ks11;
  $StockCopyWith<$Res>? get kq11;
  $StockCopyWith<$Res>? get cnss;
  $StockCopyWith<$Res>? get n225;
  $StockCopyWith<$Res>? get stoxx;
  $StockCopyWith<$Res>? get btckrw;
}

/// @nodoc
class _$StockMarketIndexCopyWithImpl<$Res>
    implements $StockMarketIndexCopyWith<$Res> {
  _$StockMarketIndexCopyWithImpl(this._value, this._then);

  final StockMarketIndex _value;
  // ignore: unused_field
  final $Res Function(StockMarketIndex) _then;

  @override
  $Res call({
    Object? dji = freezed,
    Object? ixic = freezed,
    Object? gspc = freezed,
    Object? sox = freezed,
    Object? ymf = freezed,
    Object? nqf = freezed,
    Object? esf = freezed,
    Object? rtyf = freezed,
    Object? krwx = freezed,
    Object? clf = freezed,
    Object? gcf = freezed,
    Object? sif = freezed,
    Object? tnx = freezed,
    Object? vix = freezed,
    Object? ks11 = freezed,
    Object? kq11 = freezed,
    Object? cnss = freezed,
    Object? n225 = freezed,
    Object? stoxx = freezed,
    Object? btckrw = freezed,
  }) {
    return _then(_value.copyWith(
      dji: dji == freezed
          ? _value.dji
          : dji // ignore: cast_nullable_to_non_nullable
              as Stock?,
      ixic: ixic == freezed
          ? _value.ixic
          : ixic // ignore: cast_nullable_to_non_nullable
              as Stock?,
      gspc: gspc == freezed
          ? _value.gspc
          : gspc // ignore: cast_nullable_to_non_nullable
              as Stock?,
      sox: sox == freezed
          ? _value.sox
          : sox // ignore: cast_nullable_to_non_nullable
              as Stock?,
      ymf: ymf == freezed
          ? _value.ymf
          : ymf // ignore: cast_nullable_to_non_nullable
              as Stock?,
      nqf: nqf == freezed
          ? _value.nqf
          : nqf // ignore: cast_nullable_to_non_nullable
              as Stock?,
      esf: esf == freezed
          ? _value.esf
          : esf // ignore: cast_nullable_to_non_nullable
              as Stock?,
      rtyf: rtyf == freezed
          ? _value.rtyf
          : rtyf // ignore: cast_nullable_to_non_nullable
              as Stock?,
      krwx: krwx == freezed
          ? _value.krwx
          : krwx // ignore: cast_nullable_to_non_nullable
              as Stock?,
      clf: clf == freezed
          ? _value.clf
          : clf // ignore: cast_nullable_to_non_nullable
              as Stock?,
      gcf: gcf == freezed
          ? _value.gcf
          : gcf // ignore: cast_nullable_to_non_nullable
              as Stock?,
      sif: sif == freezed
          ? _value.sif
          : sif // ignore: cast_nullable_to_non_nullable
              as Stock?,
      tnx: tnx == freezed
          ? _value.tnx
          : tnx // ignore: cast_nullable_to_non_nullable
              as Stock?,
      vix: vix == freezed
          ? _value.vix
          : vix // ignore: cast_nullable_to_non_nullable
              as Stock?,
      ks11: ks11 == freezed
          ? _value.ks11
          : ks11 // ignore: cast_nullable_to_non_nullable
              as Stock?,
      kq11: kq11 == freezed
          ? _value.kq11
          : kq11 // ignore: cast_nullable_to_non_nullable
              as Stock?,
      cnss: cnss == freezed
          ? _value.cnss
          : cnss // ignore: cast_nullable_to_non_nullable
              as Stock?,
      n225: n225 == freezed
          ? _value.n225
          : n225 // ignore: cast_nullable_to_non_nullable
              as Stock?,
      stoxx: stoxx == freezed
          ? _value.stoxx
          : stoxx // ignore: cast_nullable_to_non_nullable
              as Stock?,
      btckrw: btckrw == freezed
          ? _value.btckrw
          : btckrw // ignore: cast_nullable_to_non_nullable
              as Stock?,
    ));
  }

  @override
  $StockCopyWith<$Res>? get dji {
    if (_value.dji == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.dji!, (value) {
      return _then(_value.copyWith(dji: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get ixic {
    if (_value.ixic == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.ixic!, (value) {
      return _then(_value.copyWith(ixic: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get gspc {
    if (_value.gspc == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.gspc!, (value) {
      return _then(_value.copyWith(gspc: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get sox {
    if (_value.sox == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.sox!, (value) {
      return _then(_value.copyWith(sox: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get ymf {
    if (_value.ymf == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.ymf!, (value) {
      return _then(_value.copyWith(ymf: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get nqf {
    if (_value.nqf == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.nqf!, (value) {
      return _then(_value.copyWith(nqf: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get esf {
    if (_value.esf == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.esf!, (value) {
      return _then(_value.copyWith(esf: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get rtyf {
    if (_value.rtyf == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.rtyf!, (value) {
      return _then(_value.copyWith(rtyf: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get krwx {
    if (_value.krwx == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.krwx!, (value) {
      return _then(_value.copyWith(krwx: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get clf {
    if (_value.clf == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.clf!, (value) {
      return _then(_value.copyWith(clf: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get gcf {
    if (_value.gcf == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.gcf!, (value) {
      return _then(_value.copyWith(gcf: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get sif {
    if (_value.sif == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.sif!, (value) {
      return _then(_value.copyWith(sif: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get tnx {
    if (_value.tnx == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.tnx!, (value) {
      return _then(_value.copyWith(tnx: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get vix {
    if (_value.vix == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.vix!, (value) {
      return _then(_value.copyWith(vix: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get ks11 {
    if (_value.ks11 == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.ks11!, (value) {
      return _then(_value.copyWith(ks11: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get kq11 {
    if (_value.kq11 == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.kq11!, (value) {
      return _then(_value.copyWith(kq11: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get cnss {
    if (_value.cnss == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.cnss!, (value) {
      return _then(_value.copyWith(cnss: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get n225 {
    if (_value.n225 == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.n225!, (value) {
      return _then(_value.copyWith(n225: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get stoxx {
    if (_value.stoxx == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.stoxx!, (value) {
      return _then(_value.copyWith(stoxx: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get btckrw {
    if (_value.btckrw == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.btckrw!, (value) {
      return _then(_value.copyWith(btckrw: value));
    });
  }
}

/// @nodoc
abstract class _$StockMarketIndexCopyWith<$Res>
    implements $StockMarketIndexCopyWith<$Res> {
  factory _$StockMarketIndexCopyWith(
          _StockMarketIndex value, $Res Function(_StockMarketIndex) then) =
      __$StockMarketIndexCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: Strings.dji) Stock? dji,
      @JsonKey(name: Strings.ixic) Stock? ixic,
      @JsonKey(name: Strings.gspc) Stock? gspc,
      @JsonKey(name: Strings.sox) Stock? sox,
      @JsonKey(name: Strings.ymf) Stock? ymf,
      @JsonKey(name: Strings.nqf) Stock? nqf,
      @JsonKey(name: Strings.esf) Stock? esf,
      @JsonKey(name: Strings.rtyf) Stock? rtyf,
      @JsonKey(name: Strings.krwx) Stock? krwx,
      @JsonKey(name: Strings.clf) Stock? clf,
      @JsonKey(name: Strings.gcf) Stock? gcf,
      @JsonKey(name: Strings.sif) Stock? sif,
      @JsonKey(name: Strings.tnx) Stock? tnx,
      @JsonKey(name: Strings.vix) Stock? vix,
      @JsonKey(name: Strings.ks11) Stock? ks11,
      @JsonKey(name: Strings.kq11) Stock? kq11,
      @JsonKey(name: Strings.cnss) Stock? cnss,
      @JsonKey(name: Strings.n225) Stock? n225,
      @JsonKey(name: Strings.stoxx) Stock? stoxx,
      @JsonKey(name: Strings.btckrw) Stock? btckrw});

  @override
  $StockCopyWith<$Res>? get dji;
  @override
  $StockCopyWith<$Res>? get ixic;
  @override
  $StockCopyWith<$Res>? get gspc;
  @override
  $StockCopyWith<$Res>? get sox;
  @override
  $StockCopyWith<$Res>? get ymf;
  @override
  $StockCopyWith<$Res>? get nqf;
  @override
  $StockCopyWith<$Res>? get esf;
  @override
  $StockCopyWith<$Res>? get rtyf;
  @override
  $StockCopyWith<$Res>? get krwx;
  @override
  $StockCopyWith<$Res>? get clf;
  @override
  $StockCopyWith<$Res>? get gcf;
  @override
  $StockCopyWith<$Res>? get sif;
  @override
  $StockCopyWith<$Res>? get tnx;
  @override
  $StockCopyWith<$Res>? get vix;
  @override
  $StockCopyWith<$Res>? get ks11;
  @override
  $StockCopyWith<$Res>? get kq11;
  @override
  $StockCopyWith<$Res>? get cnss;
  @override
  $StockCopyWith<$Res>? get n225;
  @override
  $StockCopyWith<$Res>? get stoxx;
  @override
  $StockCopyWith<$Res>? get btckrw;
}

/// @nodoc
class __$StockMarketIndexCopyWithImpl<$Res>
    extends _$StockMarketIndexCopyWithImpl<$Res>
    implements _$StockMarketIndexCopyWith<$Res> {
  __$StockMarketIndexCopyWithImpl(
      _StockMarketIndex _value, $Res Function(_StockMarketIndex) _then)
      : super(_value, (v) => _then(v as _StockMarketIndex));

  @override
  _StockMarketIndex get _value => super._value as _StockMarketIndex;

  @override
  $Res call({
    Object? dji = freezed,
    Object? ixic = freezed,
    Object? gspc = freezed,
    Object? sox = freezed,
    Object? ymf = freezed,
    Object? nqf = freezed,
    Object? esf = freezed,
    Object? rtyf = freezed,
    Object? krwx = freezed,
    Object? clf = freezed,
    Object? gcf = freezed,
    Object? sif = freezed,
    Object? tnx = freezed,
    Object? vix = freezed,
    Object? ks11 = freezed,
    Object? kq11 = freezed,
    Object? cnss = freezed,
    Object? n225 = freezed,
    Object? stoxx = freezed,
    Object? btckrw = freezed,
  }) {
    return _then(_StockMarketIndex(
      dji: dji == freezed
          ? _value.dji
          : dji // ignore: cast_nullable_to_non_nullable
              as Stock?,
      ixic: ixic == freezed
          ? _value.ixic
          : ixic // ignore: cast_nullable_to_non_nullable
              as Stock?,
      gspc: gspc == freezed
          ? _value.gspc
          : gspc // ignore: cast_nullable_to_non_nullable
              as Stock?,
      sox: sox == freezed
          ? _value.sox
          : sox // ignore: cast_nullable_to_non_nullable
              as Stock?,
      ymf: ymf == freezed
          ? _value.ymf
          : ymf // ignore: cast_nullable_to_non_nullable
              as Stock?,
      nqf: nqf == freezed
          ? _value.nqf
          : nqf // ignore: cast_nullable_to_non_nullable
              as Stock?,
      esf: esf == freezed
          ? _value.esf
          : esf // ignore: cast_nullable_to_non_nullable
              as Stock?,
      rtyf: rtyf == freezed
          ? _value.rtyf
          : rtyf // ignore: cast_nullable_to_non_nullable
              as Stock?,
      krwx: krwx == freezed
          ? _value.krwx
          : krwx // ignore: cast_nullable_to_non_nullable
              as Stock?,
      clf: clf == freezed
          ? _value.clf
          : clf // ignore: cast_nullable_to_non_nullable
              as Stock?,
      gcf: gcf == freezed
          ? _value.gcf
          : gcf // ignore: cast_nullable_to_non_nullable
              as Stock?,
      sif: sif == freezed
          ? _value.sif
          : sif // ignore: cast_nullable_to_non_nullable
              as Stock?,
      tnx: tnx == freezed
          ? _value.tnx
          : tnx // ignore: cast_nullable_to_non_nullable
              as Stock?,
      vix: vix == freezed
          ? _value.vix
          : vix // ignore: cast_nullable_to_non_nullable
              as Stock?,
      ks11: ks11 == freezed
          ? _value.ks11
          : ks11 // ignore: cast_nullable_to_non_nullable
              as Stock?,
      kq11: kq11 == freezed
          ? _value.kq11
          : kq11 // ignore: cast_nullable_to_non_nullable
              as Stock?,
      cnss: cnss == freezed
          ? _value.cnss
          : cnss // ignore: cast_nullable_to_non_nullable
              as Stock?,
      n225: n225 == freezed
          ? _value.n225
          : n225 // ignore: cast_nullable_to_non_nullable
              as Stock?,
      stoxx: stoxx == freezed
          ? _value.stoxx
          : stoxx // ignore: cast_nullable_to_non_nullable
              as Stock?,
      btckrw: btckrw == freezed
          ? _value.btckrw
          : btckrw // ignore: cast_nullable_to_non_nullable
              as Stock?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockMarketIndex implements _StockMarketIndex {
  _$_StockMarketIndex(
      {@JsonKey(name: Strings.dji) this.dji,
      @JsonKey(name: Strings.ixic) this.ixic,
      @JsonKey(name: Strings.gspc) this.gspc,
      @JsonKey(name: Strings.sox) this.sox,
      @JsonKey(name: Strings.ymf) this.ymf,
      @JsonKey(name: Strings.nqf) this.nqf,
      @JsonKey(name: Strings.esf) this.esf,
      @JsonKey(name: Strings.rtyf) this.rtyf,
      @JsonKey(name: Strings.krwx) this.krwx,
      @JsonKey(name: Strings.clf) this.clf,
      @JsonKey(name: Strings.gcf) this.gcf,
      @JsonKey(name: Strings.sif) this.sif,
      @JsonKey(name: Strings.tnx) this.tnx,
      @JsonKey(name: Strings.vix) this.vix,
      @JsonKey(name: Strings.ks11) this.ks11,
      @JsonKey(name: Strings.kq11) this.kq11,
      @JsonKey(name: Strings.cnss) this.cnss,
      @JsonKey(name: Strings.n225) this.n225,
      @JsonKey(name: Strings.stoxx) this.stoxx,
      @JsonKey(name: Strings.btckrw) this.btckrw});

  factory _$_StockMarketIndex.fromJson(Map<String, dynamic> json) =>
      _$$_StockMarketIndexFromJson(json);

  @override
  @JsonKey(name: Strings.dji)
  final Stock? dji;
  @override
  @JsonKey(name: Strings.ixic)
  final Stock? ixic;
  @override
  @JsonKey(name: Strings.gspc)
  final Stock? gspc;
  @override
  @JsonKey(name: Strings.sox)
  final Stock? sox;
  @override
  @JsonKey(name: Strings.ymf)
  final Stock? ymf;
  @override
  @JsonKey(name: Strings.nqf)
  final Stock? nqf;
  @override
  @JsonKey(name: Strings.esf)
  final Stock? esf;
  @override
  @JsonKey(name: Strings.rtyf)
  final Stock? rtyf;
  @override
  @JsonKey(name: Strings.krwx)
  final Stock? krwx;
  @override
  @JsonKey(name: Strings.clf)
  final Stock? clf;
  @override
  @JsonKey(name: Strings.gcf)
  final Stock? gcf;
  @override
  @JsonKey(name: Strings.sif)
  final Stock? sif;
  @override
  @JsonKey(name: Strings.tnx)
  final Stock? tnx;
  @override
  @JsonKey(name: Strings.vix)
  final Stock? vix;
  @override
  @JsonKey(name: Strings.ks11)
  final Stock? ks11;
  @override
  @JsonKey(name: Strings.kq11)
  final Stock? kq11;
  @override
  @JsonKey(name: Strings.cnss)
  final Stock? cnss;
  @override
  @JsonKey(name: Strings.n225)
  final Stock? n225;
  @override
  @JsonKey(name: Strings.stoxx)
  final Stock? stoxx;
  @override
  @JsonKey(name: Strings.btckrw)
  final Stock? btckrw;

  @override
  String toString() {
    return 'StockMarketIndex(dji: $dji, ixic: $ixic, gspc: $gspc, sox: $sox, ymf: $ymf, nqf: $nqf, esf: $esf, rtyf: $rtyf, krwx: $krwx, clf: $clf, gcf: $gcf, sif: $sif, tnx: $tnx, vix: $vix, ks11: $ks11, kq11: $kq11, cnss: $cnss, n225: $n225, stoxx: $stoxx, btckrw: $btckrw)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockMarketIndex &&
            const DeepCollectionEquality().equals(other.dji, dji) &&
            const DeepCollectionEquality().equals(other.ixic, ixic) &&
            const DeepCollectionEquality().equals(other.gspc, gspc) &&
            const DeepCollectionEquality().equals(other.sox, sox) &&
            const DeepCollectionEquality().equals(other.ymf, ymf) &&
            const DeepCollectionEquality().equals(other.nqf, nqf) &&
            const DeepCollectionEquality().equals(other.esf, esf) &&
            const DeepCollectionEquality().equals(other.rtyf, rtyf) &&
            const DeepCollectionEquality().equals(other.krwx, krwx) &&
            const DeepCollectionEquality().equals(other.clf, clf) &&
            const DeepCollectionEquality().equals(other.gcf, gcf) &&
            const DeepCollectionEquality().equals(other.sif, sif) &&
            const DeepCollectionEquality().equals(other.tnx, tnx) &&
            const DeepCollectionEquality().equals(other.vix, vix) &&
            const DeepCollectionEquality().equals(other.ks11, ks11) &&
            const DeepCollectionEquality().equals(other.kq11, kq11) &&
            const DeepCollectionEquality().equals(other.cnss, cnss) &&
            const DeepCollectionEquality().equals(other.n225, n225) &&
            const DeepCollectionEquality().equals(other.stoxx, stoxx) &&
            const DeepCollectionEquality().equals(other.btckrw, btckrw));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(dji),
        const DeepCollectionEquality().hash(ixic),
        const DeepCollectionEquality().hash(gspc),
        const DeepCollectionEquality().hash(sox),
        const DeepCollectionEquality().hash(ymf),
        const DeepCollectionEquality().hash(nqf),
        const DeepCollectionEquality().hash(esf),
        const DeepCollectionEquality().hash(rtyf),
        const DeepCollectionEquality().hash(krwx),
        const DeepCollectionEquality().hash(clf),
        const DeepCollectionEquality().hash(gcf),
        const DeepCollectionEquality().hash(sif),
        const DeepCollectionEquality().hash(tnx),
        const DeepCollectionEquality().hash(vix),
        const DeepCollectionEquality().hash(ks11),
        const DeepCollectionEquality().hash(kq11),
        const DeepCollectionEquality().hash(cnss),
        const DeepCollectionEquality().hash(n225),
        const DeepCollectionEquality().hash(stoxx),
        const DeepCollectionEquality().hash(btckrw)
      ]);

  @JsonKey(ignore: true)
  @override
  _$StockMarketIndexCopyWith<_StockMarketIndex> get copyWith =>
      __$StockMarketIndexCopyWithImpl<_StockMarketIndex>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockMarketIndexToJson(this);
  }
}

abstract class _StockMarketIndex implements StockMarketIndex {
  factory _StockMarketIndex(
      {@JsonKey(name: Strings.dji) Stock? dji,
      @JsonKey(name: Strings.ixic) Stock? ixic,
      @JsonKey(name: Strings.gspc) Stock? gspc,
      @JsonKey(name: Strings.sox) Stock? sox,
      @JsonKey(name: Strings.ymf) Stock? ymf,
      @JsonKey(name: Strings.nqf) Stock? nqf,
      @JsonKey(name: Strings.esf) Stock? esf,
      @JsonKey(name: Strings.rtyf) Stock? rtyf,
      @JsonKey(name: Strings.krwx) Stock? krwx,
      @JsonKey(name: Strings.clf) Stock? clf,
      @JsonKey(name: Strings.gcf) Stock? gcf,
      @JsonKey(name: Strings.sif) Stock? sif,
      @JsonKey(name: Strings.tnx) Stock? tnx,
      @JsonKey(name: Strings.vix) Stock? vix,
      @JsonKey(name: Strings.ks11) Stock? ks11,
      @JsonKey(name: Strings.kq11) Stock? kq11,
      @JsonKey(name: Strings.cnss) Stock? cnss,
      @JsonKey(name: Strings.n225) Stock? n225,
      @JsonKey(name: Strings.stoxx) Stock? stoxx,
      @JsonKey(name: Strings.btckrw) Stock? btckrw}) = _$_StockMarketIndex;

  factory _StockMarketIndex.fromJson(Map<String, dynamic> json) =
      _$_StockMarketIndex.fromJson;

  @override
  @JsonKey(name: Strings.dji)
  Stock? get dji;
  @override
  @JsonKey(name: Strings.ixic)
  Stock? get ixic;
  @override
  @JsonKey(name: Strings.gspc)
  Stock? get gspc;
  @override
  @JsonKey(name: Strings.sox)
  Stock? get sox;
  @override
  @JsonKey(name: Strings.ymf)
  Stock? get ymf;
  @override
  @JsonKey(name: Strings.nqf)
  Stock? get nqf;
  @override
  @JsonKey(name: Strings.esf)
  Stock? get esf;
  @override
  @JsonKey(name: Strings.rtyf)
  Stock? get rtyf;
  @override
  @JsonKey(name: Strings.krwx)
  Stock? get krwx;
  @override
  @JsonKey(name: Strings.clf)
  Stock? get clf;
  @override
  @JsonKey(name: Strings.gcf)
  Stock? get gcf;
  @override
  @JsonKey(name: Strings.sif)
  Stock? get sif;
  @override
  @JsonKey(name: Strings.tnx)
  Stock? get tnx;
  @override
  @JsonKey(name: Strings.vix)
  Stock? get vix;
  @override
  @JsonKey(name: Strings.ks11)
  Stock? get ks11;
  @override
  @JsonKey(name: Strings.kq11)
  Stock? get kq11;
  @override
  @JsonKey(name: Strings.cnss)
  Stock? get cnss;
  @override
  @JsonKey(name: Strings.n225)
  Stock? get n225;
  @override
  @JsonKey(name: Strings.stoxx)
  Stock? get stoxx;
  @override
  @JsonKey(name: Strings.btckrw)
  Stock? get btckrw;
  @override
  @JsonKey(ignore: true)
  _$StockMarketIndexCopyWith<_StockMarketIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

MumeStockMarketIndex _$MumeStockMarketIndexFromJson(Map<String, dynamic> json) {
  return _MumeStockMarketIndex.fromJson(json);
}

/// @nodoc
class _$MumeStockMarketIndexTearOff {
  const _$MumeStockMarketIndexTearOff();

  _MumeStockMarketIndex call(
      {@JsonKey(name: Strings.drn) Stock? drn,
      @JsonKey(name: Strings.tna) Stock? tna,
      @JsonKey(name: Strings.midu) Stock? midu,
      @JsonKey(name: Strings.dusl) Stock? dusl,
      @JsonKey(name: Strings.dpst) Stock? dpst,
      @JsonKey(name: Strings.retl) Stock? retl,
      @JsonKey(name: Strings.udow) Stock? udow,
      @JsonKey(name: Strings.fngu) Stock? fngu,
      @JsonKey(name: Strings.pill) Stock? pill,
      @JsonKey(name: Strings.utsl) Stock? utsl,
      @JsonKey(name: Strings.bnku) Stock? bnku,
      @JsonKey(name: Strings.hibl) Stock? hibl,
      @JsonKey(name: Strings.labu) Stock? labu,
      @JsonKey(name: Strings.webl) Stock? webl,
      @JsonKey(name: Strings.nail) Stock? nail,
      @JsonKey(name: Strings.dfen) Stock? dfen,
      @JsonKey(name: Strings.soxl) Stock? soxl,
      @JsonKey(name: Strings.tpor) Stock? tpor,
      @JsonKey(name: Strings.want) Stock? want,
      @JsonKey(name: Strings.fas) Stock? fas,
      @JsonKey(name: Strings.tqqq) Stock? tqqq,
      @JsonKey(name: Strings.cure) Stock? cure,
      @JsonKey(name: Strings.tecl) Stock? tecl,
      @JsonKey(name: Strings.bulz) Stock? bulz,
      @JsonKey(name: Strings.upro) Stock? upro}) {
    return _MumeStockMarketIndex(
      drn: drn,
      tna: tna,
      midu: midu,
      dusl: dusl,
      dpst: dpst,
      retl: retl,
      udow: udow,
      fngu: fngu,
      pill: pill,
      utsl: utsl,
      bnku: bnku,
      hibl: hibl,
      labu: labu,
      webl: webl,
      nail: nail,
      dfen: dfen,
      soxl: soxl,
      tpor: tpor,
      want: want,
      fas: fas,
      tqqq: tqqq,
      cure: cure,
      tecl: tecl,
      bulz: bulz,
      upro: upro,
    );
  }

  MumeStockMarketIndex fromJson(Map<String, Object?> json) {
    return MumeStockMarketIndex.fromJson(json);
  }
}

/// @nodoc
const $MumeStockMarketIndex = _$MumeStockMarketIndexTearOff();

/// @nodoc
mixin _$MumeStockMarketIndex {
  @JsonKey(name: Strings.drn)
  Stock? get drn => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.tna)
  Stock? get tna => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.midu)
  Stock? get midu => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.dusl)
  Stock? get dusl => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.dpst)
  Stock? get dpst => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.retl)
  Stock? get retl => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.udow)
  Stock? get udow => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.fngu)
  Stock? get fngu => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.pill)
  Stock? get pill => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.utsl)
  Stock? get utsl => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.bnku)
  Stock? get bnku => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.hibl)
  Stock? get hibl => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.labu)
  Stock? get labu => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.webl)
  Stock? get webl => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.nail)
  Stock? get nail => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.dfen)
  Stock? get dfen => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.soxl)
  Stock? get soxl => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.tpor)
  Stock? get tpor => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.want)
  Stock? get want => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.fas)
  Stock? get fas => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.tqqq)
  Stock? get tqqq => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.cure)
  Stock? get cure => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.tecl)
  Stock? get tecl => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.bulz)
  Stock? get bulz => throw _privateConstructorUsedError;
  @JsonKey(name: Strings.upro)
  Stock? get upro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MumeStockMarketIndexCopyWith<MumeStockMarketIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MumeStockMarketIndexCopyWith<$Res> {
  factory $MumeStockMarketIndexCopyWith(MumeStockMarketIndex value,
          $Res Function(MumeStockMarketIndex) then) =
      _$MumeStockMarketIndexCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: Strings.drn) Stock? drn,
      @JsonKey(name: Strings.tna) Stock? tna,
      @JsonKey(name: Strings.midu) Stock? midu,
      @JsonKey(name: Strings.dusl) Stock? dusl,
      @JsonKey(name: Strings.dpst) Stock? dpst,
      @JsonKey(name: Strings.retl) Stock? retl,
      @JsonKey(name: Strings.udow) Stock? udow,
      @JsonKey(name: Strings.fngu) Stock? fngu,
      @JsonKey(name: Strings.pill) Stock? pill,
      @JsonKey(name: Strings.utsl) Stock? utsl,
      @JsonKey(name: Strings.bnku) Stock? bnku,
      @JsonKey(name: Strings.hibl) Stock? hibl,
      @JsonKey(name: Strings.labu) Stock? labu,
      @JsonKey(name: Strings.webl) Stock? webl,
      @JsonKey(name: Strings.nail) Stock? nail,
      @JsonKey(name: Strings.dfen) Stock? dfen,
      @JsonKey(name: Strings.soxl) Stock? soxl,
      @JsonKey(name: Strings.tpor) Stock? tpor,
      @JsonKey(name: Strings.want) Stock? want,
      @JsonKey(name: Strings.fas) Stock? fas,
      @JsonKey(name: Strings.tqqq) Stock? tqqq,
      @JsonKey(name: Strings.cure) Stock? cure,
      @JsonKey(name: Strings.tecl) Stock? tecl,
      @JsonKey(name: Strings.bulz) Stock? bulz,
      @JsonKey(name: Strings.upro) Stock? upro});

  $StockCopyWith<$Res>? get drn;
  $StockCopyWith<$Res>? get tna;
  $StockCopyWith<$Res>? get midu;
  $StockCopyWith<$Res>? get dusl;
  $StockCopyWith<$Res>? get dpst;
  $StockCopyWith<$Res>? get retl;
  $StockCopyWith<$Res>? get udow;
  $StockCopyWith<$Res>? get fngu;
  $StockCopyWith<$Res>? get pill;
  $StockCopyWith<$Res>? get utsl;
  $StockCopyWith<$Res>? get bnku;
  $StockCopyWith<$Res>? get hibl;
  $StockCopyWith<$Res>? get labu;
  $StockCopyWith<$Res>? get webl;
  $StockCopyWith<$Res>? get nail;
  $StockCopyWith<$Res>? get dfen;
  $StockCopyWith<$Res>? get soxl;
  $StockCopyWith<$Res>? get tpor;
  $StockCopyWith<$Res>? get want;
  $StockCopyWith<$Res>? get fas;
  $StockCopyWith<$Res>? get tqqq;
  $StockCopyWith<$Res>? get cure;
  $StockCopyWith<$Res>? get tecl;
  $StockCopyWith<$Res>? get bulz;
  $StockCopyWith<$Res>? get upro;
}

/// @nodoc
class _$MumeStockMarketIndexCopyWithImpl<$Res>
    implements $MumeStockMarketIndexCopyWith<$Res> {
  _$MumeStockMarketIndexCopyWithImpl(this._value, this._then);

  final MumeStockMarketIndex _value;
  // ignore: unused_field
  final $Res Function(MumeStockMarketIndex) _then;

  @override
  $Res call({
    Object? drn = freezed,
    Object? tna = freezed,
    Object? midu = freezed,
    Object? dusl = freezed,
    Object? dpst = freezed,
    Object? retl = freezed,
    Object? udow = freezed,
    Object? fngu = freezed,
    Object? pill = freezed,
    Object? utsl = freezed,
    Object? bnku = freezed,
    Object? hibl = freezed,
    Object? labu = freezed,
    Object? webl = freezed,
    Object? nail = freezed,
    Object? dfen = freezed,
    Object? soxl = freezed,
    Object? tpor = freezed,
    Object? want = freezed,
    Object? fas = freezed,
    Object? tqqq = freezed,
    Object? cure = freezed,
    Object? tecl = freezed,
    Object? bulz = freezed,
    Object? upro = freezed,
  }) {
    return _then(_value.copyWith(
      drn: drn == freezed
          ? _value.drn
          : drn // ignore: cast_nullable_to_non_nullable
              as Stock?,
      tna: tna == freezed
          ? _value.tna
          : tna // ignore: cast_nullable_to_non_nullable
              as Stock?,
      midu: midu == freezed
          ? _value.midu
          : midu // ignore: cast_nullable_to_non_nullable
              as Stock?,
      dusl: dusl == freezed
          ? _value.dusl
          : dusl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      dpst: dpst == freezed
          ? _value.dpst
          : dpst // ignore: cast_nullable_to_non_nullable
              as Stock?,
      retl: retl == freezed
          ? _value.retl
          : retl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      udow: udow == freezed
          ? _value.udow
          : udow // ignore: cast_nullable_to_non_nullable
              as Stock?,
      fngu: fngu == freezed
          ? _value.fngu
          : fngu // ignore: cast_nullable_to_non_nullable
              as Stock?,
      pill: pill == freezed
          ? _value.pill
          : pill // ignore: cast_nullable_to_non_nullable
              as Stock?,
      utsl: utsl == freezed
          ? _value.utsl
          : utsl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      bnku: bnku == freezed
          ? _value.bnku
          : bnku // ignore: cast_nullable_to_non_nullable
              as Stock?,
      hibl: hibl == freezed
          ? _value.hibl
          : hibl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      labu: labu == freezed
          ? _value.labu
          : labu // ignore: cast_nullable_to_non_nullable
              as Stock?,
      webl: webl == freezed
          ? _value.webl
          : webl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      nail: nail == freezed
          ? _value.nail
          : nail // ignore: cast_nullable_to_non_nullable
              as Stock?,
      dfen: dfen == freezed
          ? _value.dfen
          : dfen // ignore: cast_nullable_to_non_nullable
              as Stock?,
      soxl: soxl == freezed
          ? _value.soxl
          : soxl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      tpor: tpor == freezed
          ? _value.tpor
          : tpor // ignore: cast_nullable_to_non_nullable
              as Stock?,
      want: want == freezed
          ? _value.want
          : want // ignore: cast_nullable_to_non_nullable
              as Stock?,
      fas: fas == freezed
          ? _value.fas
          : fas // ignore: cast_nullable_to_non_nullable
              as Stock?,
      tqqq: tqqq == freezed
          ? _value.tqqq
          : tqqq // ignore: cast_nullable_to_non_nullable
              as Stock?,
      cure: cure == freezed
          ? _value.cure
          : cure // ignore: cast_nullable_to_non_nullable
              as Stock?,
      tecl: tecl == freezed
          ? _value.tecl
          : tecl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      bulz: bulz == freezed
          ? _value.bulz
          : bulz // ignore: cast_nullable_to_non_nullable
              as Stock?,
      upro: upro == freezed
          ? _value.upro
          : upro // ignore: cast_nullable_to_non_nullable
              as Stock?,
    ));
  }

  @override
  $StockCopyWith<$Res>? get drn {
    if (_value.drn == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.drn!, (value) {
      return _then(_value.copyWith(drn: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get tna {
    if (_value.tna == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.tna!, (value) {
      return _then(_value.copyWith(tna: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get midu {
    if (_value.midu == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.midu!, (value) {
      return _then(_value.copyWith(midu: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get dusl {
    if (_value.dusl == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.dusl!, (value) {
      return _then(_value.copyWith(dusl: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get dpst {
    if (_value.dpst == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.dpst!, (value) {
      return _then(_value.copyWith(dpst: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get retl {
    if (_value.retl == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.retl!, (value) {
      return _then(_value.copyWith(retl: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get udow {
    if (_value.udow == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.udow!, (value) {
      return _then(_value.copyWith(udow: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get fngu {
    if (_value.fngu == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.fngu!, (value) {
      return _then(_value.copyWith(fngu: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get pill {
    if (_value.pill == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.pill!, (value) {
      return _then(_value.copyWith(pill: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get utsl {
    if (_value.utsl == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.utsl!, (value) {
      return _then(_value.copyWith(utsl: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get bnku {
    if (_value.bnku == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.bnku!, (value) {
      return _then(_value.copyWith(bnku: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get hibl {
    if (_value.hibl == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.hibl!, (value) {
      return _then(_value.copyWith(hibl: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get labu {
    if (_value.labu == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.labu!, (value) {
      return _then(_value.copyWith(labu: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get webl {
    if (_value.webl == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.webl!, (value) {
      return _then(_value.copyWith(webl: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get nail {
    if (_value.nail == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.nail!, (value) {
      return _then(_value.copyWith(nail: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get dfen {
    if (_value.dfen == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.dfen!, (value) {
      return _then(_value.copyWith(dfen: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get soxl {
    if (_value.soxl == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.soxl!, (value) {
      return _then(_value.copyWith(soxl: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get tpor {
    if (_value.tpor == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.tpor!, (value) {
      return _then(_value.copyWith(tpor: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get want {
    if (_value.want == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.want!, (value) {
      return _then(_value.copyWith(want: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get fas {
    if (_value.fas == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.fas!, (value) {
      return _then(_value.copyWith(fas: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get tqqq {
    if (_value.tqqq == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.tqqq!, (value) {
      return _then(_value.copyWith(tqqq: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get cure {
    if (_value.cure == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.cure!, (value) {
      return _then(_value.copyWith(cure: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get tecl {
    if (_value.tecl == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.tecl!, (value) {
      return _then(_value.copyWith(tecl: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get bulz {
    if (_value.bulz == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.bulz!, (value) {
      return _then(_value.copyWith(bulz: value));
    });
  }

  @override
  $StockCopyWith<$Res>? get upro {
    if (_value.upro == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.upro!, (value) {
      return _then(_value.copyWith(upro: value));
    });
  }
}

/// @nodoc
abstract class _$MumeStockMarketIndexCopyWith<$Res>
    implements $MumeStockMarketIndexCopyWith<$Res> {
  factory _$MumeStockMarketIndexCopyWith(_MumeStockMarketIndex value,
          $Res Function(_MumeStockMarketIndex) then) =
      __$MumeStockMarketIndexCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: Strings.drn) Stock? drn,
      @JsonKey(name: Strings.tna) Stock? tna,
      @JsonKey(name: Strings.midu) Stock? midu,
      @JsonKey(name: Strings.dusl) Stock? dusl,
      @JsonKey(name: Strings.dpst) Stock? dpst,
      @JsonKey(name: Strings.retl) Stock? retl,
      @JsonKey(name: Strings.udow) Stock? udow,
      @JsonKey(name: Strings.fngu) Stock? fngu,
      @JsonKey(name: Strings.pill) Stock? pill,
      @JsonKey(name: Strings.utsl) Stock? utsl,
      @JsonKey(name: Strings.bnku) Stock? bnku,
      @JsonKey(name: Strings.hibl) Stock? hibl,
      @JsonKey(name: Strings.labu) Stock? labu,
      @JsonKey(name: Strings.webl) Stock? webl,
      @JsonKey(name: Strings.nail) Stock? nail,
      @JsonKey(name: Strings.dfen) Stock? dfen,
      @JsonKey(name: Strings.soxl) Stock? soxl,
      @JsonKey(name: Strings.tpor) Stock? tpor,
      @JsonKey(name: Strings.want) Stock? want,
      @JsonKey(name: Strings.fas) Stock? fas,
      @JsonKey(name: Strings.tqqq) Stock? tqqq,
      @JsonKey(name: Strings.cure) Stock? cure,
      @JsonKey(name: Strings.tecl) Stock? tecl,
      @JsonKey(name: Strings.bulz) Stock? bulz,
      @JsonKey(name: Strings.upro) Stock? upro});

  @override
  $StockCopyWith<$Res>? get drn;
  @override
  $StockCopyWith<$Res>? get tna;
  @override
  $StockCopyWith<$Res>? get midu;
  @override
  $StockCopyWith<$Res>? get dusl;
  @override
  $StockCopyWith<$Res>? get dpst;
  @override
  $StockCopyWith<$Res>? get retl;
  @override
  $StockCopyWith<$Res>? get udow;
  @override
  $StockCopyWith<$Res>? get fngu;
  @override
  $StockCopyWith<$Res>? get pill;
  @override
  $StockCopyWith<$Res>? get utsl;
  @override
  $StockCopyWith<$Res>? get bnku;
  @override
  $StockCopyWith<$Res>? get hibl;
  @override
  $StockCopyWith<$Res>? get labu;
  @override
  $StockCopyWith<$Res>? get webl;
  @override
  $StockCopyWith<$Res>? get nail;
  @override
  $StockCopyWith<$Res>? get dfen;
  @override
  $StockCopyWith<$Res>? get soxl;
  @override
  $StockCopyWith<$Res>? get tpor;
  @override
  $StockCopyWith<$Res>? get want;
  @override
  $StockCopyWith<$Res>? get fas;
  @override
  $StockCopyWith<$Res>? get tqqq;
  @override
  $StockCopyWith<$Res>? get cure;
  @override
  $StockCopyWith<$Res>? get tecl;
  @override
  $StockCopyWith<$Res>? get bulz;
  @override
  $StockCopyWith<$Res>? get upro;
}

/// @nodoc
class __$MumeStockMarketIndexCopyWithImpl<$Res>
    extends _$MumeStockMarketIndexCopyWithImpl<$Res>
    implements _$MumeStockMarketIndexCopyWith<$Res> {
  __$MumeStockMarketIndexCopyWithImpl(
      _MumeStockMarketIndex _value, $Res Function(_MumeStockMarketIndex) _then)
      : super(_value, (v) => _then(v as _MumeStockMarketIndex));

  @override
  _MumeStockMarketIndex get _value => super._value as _MumeStockMarketIndex;

  @override
  $Res call({
    Object? drn = freezed,
    Object? tna = freezed,
    Object? midu = freezed,
    Object? dusl = freezed,
    Object? dpst = freezed,
    Object? retl = freezed,
    Object? udow = freezed,
    Object? fngu = freezed,
    Object? pill = freezed,
    Object? utsl = freezed,
    Object? bnku = freezed,
    Object? hibl = freezed,
    Object? labu = freezed,
    Object? webl = freezed,
    Object? nail = freezed,
    Object? dfen = freezed,
    Object? soxl = freezed,
    Object? tpor = freezed,
    Object? want = freezed,
    Object? fas = freezed,
    Object? tqqq = freezed,
    Object? cure = freezed,
    Object? tecl = freezed,
    Object? bulz = freezed,
    Object? upro = freezed,
  }) {
    return _then(_MumeStockMarketIndex(
      drn: drn == freezed
          ? _value.drn
          : drn // ignore: cast_nullable_to_non_nullable
              as Stock?,
      tna: tna == freezed
          ? _value.tna
          : tna // ignore: cast_nullable_to_non_nullable
              as Stock?,
      midu: midu == freezed
          ? _value.midu
          : midu // ignore: cast_nullable_to_non_nullable
              as Stock?,
      dusl: dusl == freezed
          ? _value.dusl
          : dusl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      dpst: dpst == freezed
          ? _value.dpst
          : dpst // ignore: cast_nullable_to_non_nullable
              as Stock?,
      retl: retl == freezed
          ? _value.retl
          : retl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      udow: udow == freezed
          ? _value.udow
          : udow // ignore: cast_nullable_to_non_nullable
              as Stock?,
      fngu: fngu == freezed
          ? _value.fngu
          : fngu // ignore: cast_nullable_to_non_nullable
              as Stock?,
      pill: pill == freezed
          ? _value.pill
          : pill // ignore: cast_nullable_to_non_nullable
              as Stock?,
      utsl: utsl == freezed
          ? _value.utsl
          : utsl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      bnku: bnku == freezed
          ? _value.bnku
          : bnku // ignore: cast_nullable_to_non_nullable
              as Stock?,
      hibl: hibl == freezed
          ? _value.hibl
          : hibl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      labu: labu == freezed
          ? _value.labu
          : labu // ignore: cast_nullable_to_non_nullable
              as Stock?,
      webl: webl == freezed
          ? _value.webl
          : webl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      nail: nail == freezed
          ? _value.nail
          : nail // ignore: cast_nullable_to_non_nullable
              as Stock?,
      dfen: dfen == freezed
          ? _value.dfen
          : dfen // ignore: cast_nullable_to_non_nullable
              as Stock?,
      soxl: soxl == freezed
          ? _value.soxl
          : soxl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      tpor: tpor == freezed
          ? _value.tpor
          : tpor // ignore: cast_nullable_to_non_nullable
              as Stock?,
      want: want == freezed
          ? _value.want
          : want // ignore: cast_nullable_to_non_nullable
              as Stock?,
      fas: fas == freezed
          ? _value.fas
          : fas // ignore: cast_nullable_to_non_nullable
              as Stock?,
      tqqq: tqqq == freezed
          ? _value.tqqq
          : tqqq // ignore: cast_nullable_to_non_nullable
              as Stock?,
      cure: cure == freezed
          ? _value.cure
          : cure // ignore: cast_nullable_to_non_nullable
              as Stock?,
      tecl: tecl == freezed
          ? _value.tecl
          : tecl // ignore: cast_nullable_to_non_nullable
              as Stock?,
      bulz: bulz == freezed
          ? _value.bulz
          : bulz // ignore: cast_nullable_to_non_nullable
              as Stock?,
      upro: upro == freezed
          ? _value.upro
          : upro // ignore: cast_nullable_to_non_nullable
              as Stock?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MumeStockMarketIndex implements _MumeStockMarketIndex {
  _$_MumeStockMarketIndex(
      {@JsonKey(name: Strings.drn) this.drn,
      @JsonKey(name: Strings.tna) this.tna,
      @JsonKey(name: Strings.midu) this.midu,
      @JsonKey(name: Strings.dusl) this.dusl,
      @JsonKey(name: Strings.dpst) this.dpst,
      @JsonKey(name: Strings.retl) this.retl,
      @JsonKey(name: Strings.udow) this.udow,
      @JsonKey(name: Strings.fngu) this.fngu,
      @JsonKey(name: Strings.pill) this.pill,
      @JsonKey(name: Strings.utsl) this.utsl,
      @JsonKey(name: Strings.bnku) this.bnku,
      @JsonKey(name: Strings.hibl) this.hibl,
      @JsonKey(name: Strings.labu) this.labu,
      @JsonKey(name: Strings.webl) this.webl,
      @JsonKey(name: Strings.nail) this.nail,
      @JsonKey(name: Strings.dfen) this.dfen,
      @JsonKey(name: Strings.soxl) this.soxl,
      @JsonKey(name: Strings.tpor) this.tpor,
      @JsonKey(name: Strings.want) this.want,
      @JsonKey(name: Strings.fas) this.fas,
      @JsonKey(name: Strings.tqqq) this.tqqq,
      @JsonKey(name: Strings.cure) this.cure,
      @JsonKey(name: Strings.tecl) this.tecl,
      @JsonKey(name: Strings.bulz) this.bulz,
      @JsonKey(name: Strings.upro) this.upro});

  factory _$_MumeStockMarketIndex.fromJson(Map<String, dynamic> json) =>
      _$$_MumeStockMarketIndexFromJson(json);

  @override
  @JsonKey(name: Strings.drn)
  final Stock? drn;
  @override
  @JsonKey(name: Strings.tna)
  final Stock? tna;
  @override
  @JsonKey(name: Strings.midu)
  final Stock? midu;
  @override
  @JsonKey(name: Strings.dusl)
  final Stock? dusl;
  @override
  @JsonKey(name: Strings.dpst)
  final Stock? dpst;
  @override
  @JsonKey(name: Strings.retl)
  final Stock? retl;
  @override
  @JsonKey(name: Strings.udow)
  final Stock? udow;
  @override
  @JsonKey(name: Strings.fngu)
  final Stock? fngu;
  @override
  @JsonKey(name: Strings.pill)
  final Stock? pill;
  @override
  @JsonKey(name: Strings.utsl)
  final Stock? utsl;
  @override
  @JsonKey(name: Strings.bnku)
  final Stock? bnku;
  @override
  @JsonKey(name: Strings.hibl)
  final Stock? hibl;
  @override
  @JsonKey(name: Strings.labu)
  final Stock? labu;
  @override
  @JsonKey(name: Strings.webl)
  final Stock? webl;
  @override
  @JsonKey(name: Strings.nail)
  final Stock? nail;
  @override
  @JsonKey(name: Strings.dfen)
  final Stock? dfen;
  @override
  @JsonKey(name: Strings.soxl)
  final Stock? soxl;
  @override
  @JsonKey(name: Strings.tpor)
  final Stock? tpor;
  @override
  @JsonKey(name: Strings.want)
  final Stock? want;
  @override
  @JsonKey(name: Strings.fas)
  final Stock? fas;
  @override
  @JsonKey(name: Strings.tqqq)
  final Stock? tqqq;
  @override
  @JsonKey(name: Strings.cure)
  final Stock? cure;
  @override
  @JsonKey(name: Strings.tecl)
  final Stock? tecl;
  @override
  @JsonKey(name: Strings.bulz)
  final Stock? bulz;
  @override
  @JsonKey(name: Strings.upro)
  final Stock? upro;

  @override
  String toString() {
    return 'MumeStockMarketIndex(drn: $drn, tna: $tna, midu: $midu, dusl: $dusl, dpst: $dpst, retl: $retl, udow: $udow, fngu: $fngu, pill: $pill, utsl: $utsl, bnku: $bnku, hibl: $hibl, labu: $labu, webl: $webl, nail: $nail, dfen: $dfen, soxl: $soxl, tpor: $tpor, want: $want, fas: $fas, tqqq: $tqqq, cure: $cure, tecl: $tecl, bulz: $bulz, upro: $upro)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MumeStockMarketIndex &&
            const DeepCollectionEquality().equals(other.drn, drn) &&
            const DeepCollectionEquality().equals(other.tna, tna) &&
            const DeepCollectionEquality().equals(other.midu, midu) &&
            const DeepCollectionEquality().equals(other.dusl, dusl) &&
            const DeepCollectionEquality().equals(other.dpst, dpst) &&
            const DeepCollectionEquality().equals(other.retl, retl) &&
            const DeepCollectionEquality().equals(other.udow, udow) &&
            const DeepCollectionEquality().equals(other.fngu, fngu) &&
            const DeepCollectionEquality().equals(other.pill, pill) &&
            const DeepCollectionEquality().equals(other.utsl, utsl) &&
            const DeepCollectionEquality().equals(other.bnku, bnku) &&
            const DeepCollectionEquality().equals(other.hibl, hibl) &&
            const DeepCollectionEquality().equals(other.labu, labu) &&
            const DeepCollectionEquality().equals(other.webl, webl) &&
            const DeepCollectionEquality().equals(other.nail, nail) &&
            const DeepCollectionEquality().equals(other.dfen, dfen) &&
            const DeepCollectionEquality().equals(other.soxl, soxl) &&
            const DeepCollectionEquality().equals(other.tpor, tpor) &&
            const DeepCollectionEquality().equals(other.want, want) &&
            const DeepCollectionEquality().equals(other.fas, fas) &&
            const DeepCollectionEquality().equals(other.tqqq, tqqq) &&
            const DeepCollectionEquality().equals(other.cure, cure) &&
            const DeepCollectionEquality().equals(other.tecl, tecl) &&
            const DeepCollectionEquality().equals(other.bulz, bulz) &&
            const DeepCollectionEquality().equals(other.upro, upro));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(drn),
        const DeepCollectionEquality().hash(tna),
        const DeepCollectionEquality().hash(midu),
        const DeepCollectionEquality().hash(dusl),
        const DeepCollectionEquality().hash(dpst),
        const DeepCollectionEquality().hash(retl),
        const DeepCollectionEquality().hash(udow),
        const DeepCollectionEquality().hash(fngu),
        const DeepCollectionEquality().hash(pill),
        const DeepCollectionEquality().hash(utsl),
        const DeepCollectionEquality().hash(bnku),
        const DeepCollectionEquality().hash(hibl),
        const DeepCollectionEquality().hash(labu),
        const DeepCollectionEquality().hash(webl),
        const DeepCollectionEquality().hash(nail),
        const DeepCollectionEquality().hash(dfen),
        const DeepCollectionEquality().hash(soxl),
        const DeepCollectionEquality().hash(tpor),
        const DeepCollectionEquality().hash(want),
        const DeepCollectionEquality().hash(fas),
        const DeepCollectionEquality().hash(tqqq),
        const DeepCollectionEquality().hash(cure),
        const DeepCollectionEquality().hash(tecl),
        const DeepCollectionEquality().hash(bulz),
        const DeepCollectionEquality().hash(upro)
      ]);

  @JsonKey(ignore: true)
  @override
  _$MumeStockMarketIndexCopyWith<_MumeStockMarketIndex> get copyWith =>
      __$MumeStockMarketIndexCopyWithImpl<_MumeStockMarketIndex>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MumeStockMarketIndexToJson(this);
  }
}

abstract class _MumeStockMarketIndex implements MumeStockMarketIndex {
  factory _MumeStockMarketIndex(
      {@JsonKey(name: Strings.drn) Stock? drn,
      @JsonKey(name: Strings.tna) Stock? tna,
      @JsonKey(name: Strings.midu) Stock? midu,
      @JsonKey(name: Strings.dusl) Stock? dusl,
      @JsonKey(name: Strings.dpst) Stock? dpst,
      @JsonKey(name: Strings.retl) Stock? retl,
      @JsonKey(name: Strings.udow) Stock? udow,
      @JsonKey(name: Strings.fngu) Stock? fngu,
      @JsonKey(name: Strings.pill) Stock? pill,
      @JsonKey(name: Strings.utsl) Stock? utsl,
      @JsonKey(name: Strings.bnku) Stock? bnku,
      @JsonKey(name: Strings.hibl) Stock? hibl,
      @JsonKey(name: Strings.labu) Stock? labu,
      @JsonKey(name: Strings.webl) Stock? webl,
      @JsonKey(name: Strings.nail) Stock? nail,
      @JsonKey(name: Strings.dfen) Stock? dfen,
      @JsonKey(name: Strings.soxl) Stock? soxl,
      @JsonKey(name: Strings.tpor) Stock? tpor,
      @JsonKey(name: Strings.want) Stock? want,
      @JsonKey(name: Strings.fas) Stock? fas,
      @JsonKey(name: Strings.tqqq) Stock? tqqq,
      @JsonKey(name: Strings.cure) Stock? cure,
      @JsonKey(name: Strings.tecl) Stock? tecl,
      @JsonKey(name: Strings.bulz) Stock? bulz,
      @JsonKey(name: Strings.upro) Stock? upro}) = _$_MumeStockMarketIndex;

  factory _MumeStockMarketIndex.fromJson(Map<String, dynamic> json) =
      _$_MumeStockMarketIndex.fromJson;

  @override
  @JsonKey(name: Strings.drn)
  Stock? get drn;
  @override
  @JsonKey(name: Strings.tna)
  Stock? get tna;
  @override
  @JsonKey(name: Strings.midu)
  Stock? get midu;
  @override
  @JsonKey(name: Strings.dusl)
  Stock? get dusl;
  @override
  @JsonKey(name: Strings.dpst)
  Stock? get dpst;
  @override
  @JsonKey(name: Strings.retl)
  Stock? get retl;
  @override
  @JsonKey(name: Strings.udow)
  Stock? get udow;
  @override
  @JsonKey(name: Strings.fngu)
  Stock? get fngu;
  @override
  @JsonKey(name: Strings.pill)
  Stock? get pill;
  @override
  @JsonKey(name: Strings.utsl)
  Stock? get utsl;
  @override
  @JsonKey(name: Strings.bnku)
  Stock? get bnku;
  @override
  @JsonKey(name: Strings.hibl)
  Stock? get hibl;
  @override
  @JsonKey(name: Strings.labu)
  Stock? get labu;
  @override
  @JsonKey(name: Strings.webl)
  Stock? get webl;
  @override
  @JsonKey(name: Strings.nail)
  Stock? get nail;
  @override
  @JsonKey(name: Strings.dfen)
  Stock? get dfen;
  @override
  @JsonKey(name: Strings.soxl)
  Stock? get soxl;
  @override
  @JsonKey(name: Strings.tpor)
  Stock? get tpor;
  @override
  @JsonKey(name: Strings.want)
  Stock? get want;
  @override
  @JsonKey(name: Strings.fas)
  Stock? get fas;
  @override
  @JsonKey(name: Strings.tqqq)
  Stock? get tqqq;
  @override
  @JsonKey(name: Strings.cure)
  Stock? get cure;
  @override
  @JsonKey(name: Strings.tecl)
  Stock? get tecl;
  @override
  @JsonKey(name: Strings.bulz)
  Stock? get bulz;
  @override
  @JsonKey(name: Strings.upro)
  Stock? get upro;
  @override
  @JsonKey(ignore: true)
  _$MumeStockMarketIndexCopyWith<_MumeStockMarketIndex> get copyWith =>
      throw _privateConstructorUsedError;
}
