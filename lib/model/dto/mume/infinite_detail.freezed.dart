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
      {int? memberId,
      int? accountId,
      int? infiniteId,
      String? symbol,
      int? divisions,
      double? feesPer,
      String? infiniteType,
      String? infiniteState,
      String? infiniteVersion,
      String? startedDate,
      String? registeredDate,
      String? doneDate,
      bool? isAutoTrade,
      double? kskyjSeed,
      double? kskyjAveragePrice,
      double? kskyjBuyPrice,
      int? kskyjHoldingQuantity,
      String? kskyjUpdateDate,
      bool? isKskyj,
      double? totalBuyPrice,
      double? totalSellPrice,
      Stock? stockDetail,
      List<Stock>? stockList,
      List<InfiniteHistory>? historyList,
      List<StockTradeInfo>? buyTradeInfoList,
      List<StockTradeInfo>? sellTradeInfoList,
      List<AveragePriceInfo>? averagePriceList,
      double? seed,
      int? holdingQuantity,
      double? realFeesPer,
      double? oneBuySeed,
      double? evalPrice,
      double? averagePrice,
      double? buyPrice,
      double? income,
      double? incomePer,
      double? progressPer}) {
    return _InfiniteDetail(
      memberId: memberId,
      accountId: accountId,
      infiniteId: infiniteId,
      symbol: symbol,
      divisions: divisions,
      feesPer: feesPer,
      infiniteType: infiniteType,
      infiniteState: infiniteState,
      infiniteVersion: infiniteVersion,
      startedDate: startedDate,
      registeredDate: registeredDate,
      doneDate: doneDate,
      isAutoTrade: isAutoTrade,
      kskyjSeed: kskyjSeed,
      kskyjAveragePrice: kskyjAveragePrice,
      kskyjBuyPrice: kskyjBuyPrice,
      kskyjHoldingQuantity: kskyjHoldingQuantity,
      kskyjUpdateDate: kskyjUpdateDate,
      isKskyj: isKskyj,
      totalBuyPrice: totalBuyPrice,
      totalSellPrice: totalSellPrice,
      stockDetail: stockDetail,
      stockList: stockList,
      historyList: historyList,
      buyTradeInfoList: buyTradeInfoList,
      sellTradeInfoList: sellTradeInfoList,
      averagePriceList: averagePriceList,
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
  int? get memberId => throw _privateConstructorUsedError;
  int? get accountId => throw _privateConstructorUsedError;
  int? get infiniteId => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  int? get divisions => throw _privateConstructorUsedError;
  double? get feesPer => throw _privateConstructorUsedError;
  String? get infiniteType => throw _privateConstructorUsedError;
  String? get infiniteState => throw _privateConstructorUsedError;
  String? get infiniteVersion => throw _privateConstructorUsedError;
  String? get startedDate => throw _privateConstructorUsedError;
  String? get registeredDate => throw _privateConstructorUsedError;
  String? get doneDate => throw _privateConstructorUsedError;
  bool? get isAutoTrade => throw _privateConstructorUsedError;
  double? get kskyjSeed => throw _privateConstructorUsedError;
  double? get kskyjAveragePrice => throw _privateConstructorUsedError;
  double? get kskyjBuyPrice => throw _privateConstructorUsedError;
  int? get kskyjHoldingQuantity => throw _privateConstructorUsedError;
  String? get kskyjUpdateDate => throw _privateConstructorUsedError;
  bool? get isKskyj => throw _privateConstructorUsedError;
  double? get totalBuyPrice => throw _privateConstructorUsedError;
  double? get totalSellPrice =>
      throw _privateConstructorUsedError; // 해당 심볼 주가 정보
  Stock? get stockDetail =>
      throw _privateConstructorUsedError; // 해당 심볼 주가 history
  List<Stock>? get stockList => throw _privateConstructorUsedError; // 매매 내역 리스트
  List<InfiniteHistory>? get historyList =>
      throw _privateConstructorUsedError; // 매수 예약 정보 리스트
  List<StockTradeInfo>? get buyTradeInfoList =>
      throw _privateConstructorUsedError; // 매도 예약 정보 리스트
  List<StockTradeInfo>? get sellTradeInfoList =>
      throw _privateConstructorUsedError; // 평단가 변화 리스트
  List<AveragePriceInfo>? get averagePriceList =>
      throw _privateConstructorUsedError; // 종목 배정 시드
  double? get seed => throw _privateConstructorUsedError; // 수량
  int? get holdingQuantity =>
      throw _privateConstructorUsedError; // 계산용 수수료율 (수수료율 * 0.01)
  double? get realFeesPer => throw _privateConstructorUsedError; // 1회 매수 금액
  double? get oneBuySeed =>
      throw _privateConstructorUsedError; // 평가금액 : 종가 * 보유수량
  double? get evalPrice => throw _privateConstructorUsedError; // 평단가
  double? get averagePrice => throw _privateConstructorUsedError; // 매입금액
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
      {int? memberId,
      int? accountId,
      int? infiniteId,
      String? symbol,
      int? divisions,
      double? feesPer,
      String? infiniteType,
      String? infiniteState,
      String? infiniteVersion,
      String? startedDate,
      String? registeredDate,
      String? doneDate,
      bool? isAutoTrade,
      double? kskyjSeed,
      double? kskyjAveragePrice,
      double? kskyjBuyPrice,
      int? kskyjHoldingQuantity,
      String? kskyjUpdateDate,
      bool? isKskyj,
      double? totalBuyPrice,
      double? totalSellPrice,
      Stock? stockDetail,
      List<Stock>? stockList,
      List<InfiniteHistory>? historyList,
      List<StockTradeInfo>? buyTradeInfoList,
      List<StockTradeInfo>? sellTradeInfoList,
      List<AveragePriceInfo>? averagePriceList,
      double? seed,
      int? holdingQuantity,
      double? realFeesPer,
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
    Object? memberId = freezed,
    Object? accountId = freezed,
    Object? infiniteId = freezed,
    Object? symbol = freezed,
    Object? divisions = freezed,
    Object? feesPer = freezed,
    Object? infiniteType = freezed,
    Object? infiniteState = freezed,
    Object? infiniteVersion = freezed,
    Object? startedDate = freezed,
    Object? registeredDate = freezed,
    Object? doneDate = freezed,
    Object? isAutoTrade = freezed,
    Object? kskyjSeed = freezed,
    Object? kskyjAveragePrice = freezed,
    Object? kskyjBuyPrice = freezed,
    Object? kskyjHoldingQuantity = freezed,
    Object? kskyjUpdateDate = freezed,
    Object? isKskyj = freezed,
    Object? totalBuyPrice = freezed,
    Object? totalSellPrice = freezed,
    Object? stockDetail = freezed,
    Object? stockList = freezed,
    Object? historyList = freezed,
    Object? buyTradeInfoList = freezed,
    Object? sellTradeInfoList = freezed,
    Object? averagePriceList = freezed,
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
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      infiniteId: infiniteId == freezed
          ? _value.infiniteId
          : infiniteId // ignore: cast_nullable_to_non_nullable
              as int?,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      divisions: divisions == freezed
          ? _value.divisions
          : divisions // ignore: cast_nullable_to_non_nullable
              as int?,
      feesPer: feesPer == freezed
          ? _value.feesPer
          : feesPer // ignore: cast_nullable_to_non_nullable
              as double?,
      infiniteType: infiniteType == freezed
          ? _value.infiniteType
          : infiniteType // ignore: cast_nullable_to_non_nullable
              as String?,
      infiniteState: infiniteState == freezed
          ? _value.infiniteState
          : infiniteState // ignore: cast_nullable_to_non_nullable
              as String?,
      infiniteVersion: infiniteVersion == freezed
          ? _value.infiniteVersion
          : infiniteVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      startedDate: startedDate == freezed
          ? _value.startedDate
          : startedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      registeredDate: registeredDate == freezed
          ? _value.registeredDate
          : registeredDate // ignore: cast_nullable_to_non_nullable
              as String?,
      doneDate: doneDate == freezed
          ? _value.doneDate
          : doneDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isAutoTrade: isAutoTrade == freezed
          ? _value.isAutoTrade
          : isAutoTrade // ignore: cast_nullable_to_non_nullable
              as bool?,
      kskyjSeed: kskyjSeed == freezed
          ? _value.kskyjSeed
          : kskyjSeed // ignore: cast_nullable_to_non_nullable
              as double?,
      kskyjAveragePrice: kskyjAveragePrice == freezed
          ? _value.kskyjAveragePrice
          : kskyjAveragePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      kskyjBuyPrice: kskyjBuyPrice == freezed
          ? _value.kskyjBuyPrice
          : kskyjBuyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      kskyjHoldingQuantity: kskyjHoldingQuantity == freezed
          ? _value.kskyjHoldingQuantity
          : kskyjHoldingQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      kskyjUpdateDate: kskyjUpdateDate == freezed
          ? _value.kskyjUpdateDate
          : kskyjUpdateDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isKskyj: isKskyj == freezed
          ? _value.isKskyj
          : isKskyj // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalBuyPrice: totalBuyPrice == freezed
          ? _value.totalBuyPrice
          : totalBuyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSellPrice: totalSellPrice == freezed
          ? _value.totalSellPrice
          : totalSellPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      stockDetail: stockDetail == freezed
          ? _value.stockDetail
          : stockDetail // ignore: cast_nullable_to_non_nullable
              as Stock?,
      stockList: stockList == freezed
          ? _value.stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as List<Stock>?,
      historyList: historyList == freezed
          ? _value.historyList
          : historyList // ignore: cast_nullable_to_non_nullable
              as List<InfiniteHistory>?,
      buyTradeInfoList: buyTradeInfoList == freezed
          ? _value.buyTradeInfoList
          : buyTradeInfoList // ignore: cast_nullable_to_non_nullable
              as List<StockTradeInfo>?,
      sellTradeInfoList: sellTradeInfoList == freezed
          ? _value.sellTradeInfoList
          : sellTradeInfoList // ignore: cast_nullable_to_non_nullable
              as List<StockTradeInfo>?,
      averagePriceList: averagePriceList == freezed
          ? _value.averagePriceList
          : averagePriceList // ignore: cast_nullable_to_non_nullable
              as List<AveragePriceInfo>?,
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
              as double?,
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
      {int? memberId,
      int? accountId,
      int? infiniteId,
      String? symbol,
      int? divisions,
      double? feesPer,
      String? infiniteType,
      String? infiniteState,
      String? infiniteVersion,
      String? startedDate,
      String? registeredDate,
      String? doneDate,
      bool? isAutoTrade,
      double? kskyjSeed,
      double? kskyjAveragePrice,
      double? kskyjBuyPrice,
      int? kskyjHoldingQuantity,
      String? kskyjUpdateDate,
      bool? isKskyj,
      double? totalBuyPrice,
      double? totalSellPrice,
      Stock? stockDetail,
      List<Stock>? stockList,
      List<InfiniteHistory>? historyList,
      List<StockTradeInfo>? buyTradeInfoList,
      List<StockTradeInfo>? sellTradeInfoList,
      List<AveragePriceInfo>? averagePriceList,
      double? seed,
      int? holdingQuantity,
      double? realFeesPer,
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
    Object? memberId = freezed,
    Object? accountId = freezed,
    Object? infiniteId = freezed,
    Object? symbol = freezed,
    Object? divisions = freezed,
    Object? feesPer = freezed,
    Object? infiniteType = freezed,
    Object? infiniteState = freezed,
    Object? infiniteVersion = freezed,
    Object? startedDate = freezed,
    Object? registeredDate = freezed,
    Object? doneDate = freezed,
    Object? isAutoTrade = freezed,
    Object? kskyjSeed = freezed,
    Object? kskyjAveragePrice = freezed,
    Object? kskyjBuyPrice = freezed,
    Object? kskyjHoldingQuantity = freezed,
    Object? kskyjUpdateDate = freezed,
    Object? isKskyj = freezed,
    Object? totalBuyPrice = freezed,
    Object? totalSellPrice = freezed,
    Object? stockDetail = freezed,
    Object? stockList = freezed,
    Object? historyList = freezed,
    Object? buyTradeInfoList = freezed,
    Object? sellTradeInfoList = freezed,
    Object? averagePriceList = freezed,
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
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      infiniteId: infiniteId == freezed
          ? _value.infiniteId
          : infiniteId // ignore: cast_nullable_to_non_nullable
              as int?,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      divisions: divisions == freezed
          ? _value.divisions
          : divisions // ignore: cast_nullable_to_non_nullable
              as int?,
      feesPer: feesPer == freezed
          ? _value.feesPer
          : feesPer // ignore: cast_nullable_to_non_nullable
              as double?,
      infiniteType: infiniteType == freezed
          ? _value.infiniteType
          : infiniteType // ignore: cast_nullable_to_non_nullable
              as String?,
      infiniteState: infiniteState == freezed
          ? _value.infiniteState
          : infiniteState // ignore: cast_nullable_to_non_nullable
              as String?,
      infiniteVersion: infiniteVersion == freezed
          ? _value.infiniteVersion
          : infiniteVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      startedDate: startedDate == freezed
          ? _value.startedDate
          : startedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      registeredDate: registeredDate == freezed
          ? _value.registeredDate
          : registeredDate // ignore: cast_nullable_to_non_nullable
              as String?,
      doneDate: doneDate == freezed
          ? _value.doneDate
          : doneDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isAutoTrade: isAutoTrade == freezed
          ? _value.isAutoTrade
          : isAutoTrade // ignore: cast_nullable_to_non_nullable
              as bool?,
      kskyjSeed: kskyjSeed == freezed
          ? _value.kskyjSeed
          : kskyjSeed // ignore: cast_nullable_to_non_nullable
              as double?,
      kskyjAveragePrice: kskyjAveragePrice == freezed
          ? _value.kskyjAveragePrice
          : kskyjAveragePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      kskyjBuyPrice: kskyjBuyPrice == freezed
          ? _value.kskyjBuyPrice
          : kskyjBuyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      kskyjHoldingQuantity: kskyjHoldingQuantity == freezed
          ? _value.kskyjHoldingQuantity
          : kskyjHoldingQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      kskyjUpdateDate: kskyjUpdateDate == freezed
          ? _value.kskyjUpdateDate
          : kskyjUpdateDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isKskyj: isKskyj == freezed
          ? _value.isKskyj
          : isKskyj // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalBuyPrice: totalBuyPrice == freezed
          ? _value.totalBuyPrice
          : totalBuyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSellPrice: totalSellPrice == freezed
          ? _value.totalSellPrice
          : totalSellPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      stockDetail: stockDetail == freezed
          ? _value.stockDetail
          : stockDetail // ignore: cast_nullable_to_non_nullable
              as Stock?,
      stockList: stockList == freezed
          ? _value.stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as List<Stock>?,
      historyList: historyList == freezed
          ? _value.historyList
          : historyList // ignore: cast_nullable_to_non_nullable
              as List<InfiniteHistory>?,
      buyTradeInfoList: buyTradeInfoList == freezed
          ? _value.buyTradeInfoList
          : buyTradeInfoList // ignore: cast_nullable_to_non_nullable
              as List<StockTradeInfo>?,
      sellTradeInfoList: sellTradeInfoList == freezed
          ? _value.sellTradeInfoList
          : sellTradeInfoList // ignore: cast_nullable_to_non_nullable
              as List<StockTradeInfo>?,
      averagePriceList: averagePriceList == freezed
          ? _value.averagePriceList
          : averagePriceList // ignore: cast_nullable_to_non_nullable
              as List<AveragePriceInfo>?,
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
              as double?,
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
      {this.memberId,
      this.accountId,
      this.infiniteId,
      this.symbol,
      this.divisions,
      this.feesPer,
      this.infiniteType,
      this.infiniteState,
      this.infiniteVersion,
      this.startedDate,
      this.registeredDate,
      this.doneDate,
      this.isAutoTrade,
      this.kskyjSeed,
      this.kskyjAveragePrice,
      this.kskyjBuyPrice,
      this.kskyjHoldingQuantity,
      this.kskyjUpdateDate,
      this.isKskyj,
      this.totalBuyPrice,
      this.totalSellPrice,
      this.stockDetail,
      this.stockList,
      this.historyList,
      this.buyTradeInfoList,
      this.sellTradeInfoList,
      this.averagePriceList,
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

  @override
  final int? memberId;
  @override
  final int? accountId;
  @override
  final int? infiniteId;
  @override
  final String? symbol;
  @override
  final int? divisions;
  @override
  final double? feesPer;
  @override
  final String? infiniteType;
  @override
  final String? infiniteState;
  @override
  final String? infiniteVersion;
  @override
  final String? startedDate;
  @override
  final String? registeredDate;
  @override
  final String? doneDate;
  @override
  final bool? isAutoTrade;
  @override
  final double? kskyjSeed;
  @override
  final double? kskyjAveragePrice;
  @override
  final double? kskyjBuyPrice;
  @override
  final int? kskyjHoldingQuantity;
  @override
  final String? kskyjUpdateDate;
  @override
  final bool? isKskyj;
  @override
  final double? totalBuyPrice;
  @override
  final double? totalSellPrice;
  @override // 해당 심볼 주가 정보
  final Stock? stockDetail;
  @override // 해당 심볼 주가 history
  final List<Stock>? stockList;
  @override // 매매 내역 리스트
  final List<InfiniteHistory>? historyList;
  @override // 매수 예약 정보 리스트
  final List<StockTradeInfo>? buyTradeInfoList;
  @override // 매도 예약 정보 리스트
  final List<StockTradeInfo>? sellTradeInfoList;
  @override // 평단가 변화 리스트
  final List<AveragePriceInfo>? averagePriceList;
  @override // 종목 배정 시드
  final double? seed;
  @override // 수량
  final int? holdingQuantity;
  @override // 계산용 수수료율 (수수료율 * 0.01)
  final double? realFeesPer;
  @override // 1회 매수 금액
  final double? oneBuySeed;
  @override // 평가금액 : 종가 * 보유수량
  final double? evalPrice;
  @override // 평단가
  final double? averagePrice;
  @override // 매입금액
  final double? buyPrice;
  @override // 손익금
  final double? income;
  @override // 손익률
  final double? incomePer;
  @override // 진행률
  final double? progressPer;

  @override
  String toString() {
    return 'InfiniteDetail(memberId: $memberId, accountId: $accountId, infiniteId: $infiniteId, symbol: $symbol, divisions: $divisions, feesPer: $feesPer, infiniteType: $infiniteType, infiniteState: $infiniteState, infiniteVersion: $infiniteVersion, startedDate: $startedDate, registeredDate: $registeredDate, doneDate: $doneDate, isAutoTrade: $isAutoTrade, kskyjSeed: $kskyjSeed, kskyjAveragePrice: $kskyjAveragePrice, kskyjBuyPrice: $kskyjBuyPrice, kskyjHoldingQuantity: $kskyjHoldingQuantity, kskyjUpdateDate: $kskyjUpdateDate, isKskyj: $isKskyj, totalBuyPrice: $totalBuyPrice, totalSellPrice: $totalSellPrice, stockDetail: $stockDetail, stockList: $stockList, historyList: $historyList, buyTradeInfoList: $buyTradeInfoList, sellTradeInfoList: $sellTradeInfoList, averagePriceList: $averagePriceList, seed: $seed, holdingQuantity: $holdingQuantity, realFeesPer: $realFeesPer, oneBuySeed: $oneBuySeed, evalPrice: $evalPrice, averagePrice: $averagePrice, buyPrice: $buyPrice, income: $income, incomePer: $incomePer, progressPer: $progressPer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InfiniteDetail &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality().equals(other.accountId, accountId) &&
            const DeepCollectionEquality()
                .equals(other.infiniteId, infiniteId) &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.divisions, divisions) &&
            const DeepCollectionEquality().equals(other.feesPer, feesPer) &&
            const DeepCollectionEquality()
                .equals(other.infiniteType, infiniteType) &&
            const DeepCollectionEquality()
                .equals(other.infiniteState, infiniteState) &&
            const DeepCollectionEquality()
                .equals(other.infiniteVersion, infiniteVersion) &&
            const DeepCollectionEquality()
                .equals(other.startedDate, startedDate) &&
            const DeepCollectionEquality()
                .equals(other.registeredDate, registeredDate) &&
            const DeepCollectionEquality().equals(other.doneDate, doneDate) &&
            const DeepCollectionEquality()
                .equals(other.isAutoTrade, isAutoTrade) &&
            const DeepCollectionEquality().equals(other.kskyjSeed, kskyjSeed) &&
            const DeepCollectionEquality()
                .equals(other.kskyjAveragePrice, kskyjAveragePrice) &&
            const DeepCollectionEquality()
                .equals(other.kskyjBuyPrice, kskyjBuyPrice) &&
            const DeepCollectionEquality()
                .equals(other.kskyjHoldingQuantity, kskyjHoldingQuantity) &&
            const DeepCollectionEquality()
                .equals(other.kskyjUpdateDate, kskyjUpdateDate) &&
            const DeepCollectionEquality().equals(other.isKskyj, isKskyj) &&
            const DeepCollectionEquality()
                .equals(other.totalBuyPrice, totalBuyPrice) &&
            const DeepCollectionEquality()
                .equals(other.totalSellPrice, totalSellPrice) &&
            const DeepCollectionEquality()
                .equals(other.stockDetail, stockDetail) &&
            const DeepCollectionEquality().equals(other.stockList, stockList) &&
            const DeepCollectionEquality()
                .equals(other.historyList, historyList) &&
            const DeepCollectionEquality()
                .equals(other.buyTradeInfoList, buyTradeInfoList) &&
            const DeepCollectionEquality()
                .equals(other.sellTradeInfoList, sellTradeInfoList) &&
            const DeepCollectionEquality()
                .equals(other.averagePriceList, averagePriceList) &&
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
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(memberId),
        const DeepCollectionEquality().hash(accountId),
        const DeepCollectionEquality().hash(infiniteId),
        const DeepCollectionEquality().hash(symbol),
        const DeepCollectionEquality().hash(divisions),
        const DeepCollectionEquality().hash(feesPer),
        const DeepCollectionEquality().hash(infiniteType),
        const DeepCollectionEquality().hash(infiniteState),
        const DeepCollectionEquality().hash(infiniteVersion),
        const DeepCollectionEquality().hash(startedDate),
        const DeepCollectionEquality().hash(registeredDate),
        const DeepCollectionEquality().hash(doneDate),
        const DeepCollectionEquality().hash(isAutoTrade),
        const DeepCollectionEquality().hash(kskyjSeed),
        const DeepCollectionEquality().hash(kskyjAveragePrice),
        const DeepCollectionEquality().hash(kskyjBuyPrice),
        const DeepCollectionEquality().hash(kskyjHoldingQuantity),
        const DeepCollectionEquality().hash(kskyjUpdateDate),
        const DeepCollectionEquality().hash(isKskyj),
        const DeepCollectionEquality().hash(totalBuyPrice),
        const DeepCollectionEquality().hash(totalSellPrice),
        const DeepCollectionEquality().hash(stockDetail),
        const DeepCollectionEquality().hash(stockList),
        const DeepCollectionEquality().hash(historyList),
        const DeepCollectionEquality().hash(buyTradeInfoList),
        const DeepCollectionEquality().hash(sellTradeInfoList),
        const DeepCollectionEquality().hash(averagePriceList),
        const DeepCollectionEquality().hash(seed),
        const DeepCollectionEquality().hash(holdingQuantity),
        const DeepCollectionEquality().hash(realFeesPer),
        const DeepCollectionEquality().hash(oneBuySeed),
        const DeepCollectionEquality().hash(evalPrice),
        const DeepCollectionEquality().hash(averagePrice),
        const DeepCollectionEquality().hash(buyPrice),
        const DeepCollectionEquality().hash(income),
        const DeepCollectionEquality().hash(incomePer),
        const DeepCollectionEquality().hash(progressPer)
      ]);

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
      {int? memberId,
      int? accountId,
      int? infiniteId,
      String? symbol,
      int? divisions,
      double? feesPer,
      String? infiniteType,
      String? infiniteState,
      String? infiniteVersion,
      String? startedDate,
      String? registeredDate,
      String? doneDate,
      bool? isAutoTrade,
      double? kskyjSeed,
      double? kskyjAveragePrice,
      double? kskyjBuyPrice,
      int? kskyjHoldingQuantity,
      String? kskyjUpdateDate,
      bool? isKskyj,
      double? totalBuyPrice,
      double? totalSellPrice,
      Stock? stockDetail,
      List<Stock>? stockList,
      List<InfiniteHistory>? historyList,
      List<StockTradeInfo>? buyTradeInfoList,
      List<StockTradeInfo>? sellTradeInfoList,
      List<AveragePriceInfo>? averagePriceList,
      double? seed,
      int? holdingQuantity,
      double? realFeesPer,
      double? oneBuySeed,
      double? evalPrice,
      double? averagePrice,
      double? buyPrice,
      double? income,
      double? incomePer,
      double? progressPer}) = _$_InfiniteDetail;

  factory _InfiniteDetail.fromJson(Map<String, dynamic> json) =
      _$_InfiniteDetail.fromJson;

  @override
  int? get memberId;
  @override
  int? get accountId;
  @override
  int? get infiniteId;
  @override
  String? get symbol;
  @override
  int? get divisions;
  @override
  double? get feesPer;
  @override
  String? get infiniteType;
  @override
  String? get infiniteState;
  @override
  String? get infiniteVersion;
  @override
  String? get startedDate;
  @override
  String? get registeredDate;
  @override
  String? get doneDate;
  @override
  bool? get isAutoTrade;
  @override
  double? get kskyjSeed;
  @override
  double? get kskyjAveragePrice;
  @override
  double? get kskyjBuyPrice;
  @override
  int? get kskyjHoldingQuantity;
  @override
  String? get kskyjUpdateDate;
  @override
  bool? get isKskyj;
  @override
  double? get totalBuyPrice;
  @override
  double? get totalSellPrice;
  @override // 해당 심볼 주가 정보
  Stock? get stockDetail;
  @override // 해당 심볼 주가 history
  List<Stock>? get stockList;
  @override // 매매 내역 리스트
  List<InfiniteHistory>? get historyList;
  @override // 매수 예약 정보 리스트
  List<StockTradeInfo>? get buyTradeInfoList;
  @override // 매도 예약 정보 리스트
  List<StockTradeInfo>? get sellTradeInfoList;
  @override // 평단가 변화 리스트
  List<AveragePriceInfo>? get averagePriceList;
  @override // 종목 배정 시드
  double? get seed;
  @override // 수량
  int? get holdingQuantity;
  @override // 계산용 수수료율 (수수료율 * 0.01)
  double? get realFeesPer;
  @override // 1회 매수 금액
  double? get oneBuySeed;
  @override // 평가금액 : 종가 * 보유수량
  double? get evalPrice;
  @override // 평단가
  double? get averagePrice;
  @override // 매입금액
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
