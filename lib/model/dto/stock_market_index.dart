import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mume/enums/login_type.dart';
import 'package:mume/view/resource/strings.dart';

part 'stock_market_index.freezed.dart';
part 'stock_market_index.g.dart';

@freezed
class Stock with _$Stock {
  factory Stock({
    String? symbol,
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
    double? gapRsi,
  }) = _Stock;

  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);
}

@freezed
class StockMarketIndex with _$StockMarketIndex {
  factory StockMarketIndex({
    @JsonKey(name: Strings.dji) Stock? dji,
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
    @JsonKey(name: Strings.btckrw) Stock? btckrw,
  }) = _StockMarketIndex;

  factory StockMarketIndex.fromJson(Map<String, dynamic> json) => _$StockMarketIndexFromJson(json);
}

@freezed
class MumeStockMarketIndex with _$MumeStockMarketIndex {
  factory MumeStockMarketIndex({
    @JsonKey(name: Strings.drn) Stock? drn,
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
    @JsonKey(name: Strings.upro) Stock? upro,
  }) = _MumeStockMarketIndex;

  factory MumeStockMarketIndex.fromJson(Map<String, dynamic> json) => _$MumeStockMarketIndexFromJson(json);
}