import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mume/view/resource/strings.dart';

enum StockMarketIndexType{
  @JsonValue(Strings.dji) dji,
  @JsonValue(Strings.ixic) ixic,
  @JsonValue(Strings.gspc) gspc,
  @JsonValue(Strings.sox) sox,
  @JsonValue(Strings.ymf) ymf,
  @JsonValue(Strings.nqf) nqf,
  @JsonValue(Strings.esf) esf,
  @JsonValue(Strings.rtyf) rtyf,
  @JsonValue(Strings.krwx) krwx,
  @JsonValue(Strings.clf) clf,
  @JsonValue(Strings.gcf) gcf,
  @JsonValue(Strings.sif) sif,
  @JsonValue(Strings.tnx) tnx,
  @JsonValue(Strings.vix) vix,
  @JsonValue(Strings.ks11) ks11,
  @JsonValue(Strings.kq11) kq11,
  @JsonValue(Strings.cnss) cnss,
  @JsonValue(Strings.n225) n225,
  @JsonValue(Strings.stoxx) stoxx,
  @JsonValue(Strings.btckrw) btckrw,
}

extension ExStockMarketIndexType on StockMarketIndexType {
  String get providerId {
    switch (this) {
      case StockMarketIndexType.dji: return Strings.dji;
      case StockMarketIndexType.ixic: return Strings.ixic;
      case StockMarketIndexType.gspc: return Strings.gspc;
      case StockMarketIndexType.sox: return Strings.sox;
      case StockMarketIndexType.ymf: return Strings.ymf;
      case StockMarketIndexType.nqf: return Strings.nqf;
      case StockMarketIndexType.esf: return Strings.esf;
      case StockMarketIndexType.rtyf: return Strings.rtyf;
      case StockMarketIndexType.krwx: return Strings.krwx;
      case StockMarketIndexType.clf: return Strings.clf;
      case StockMarketIndexType.gcf: return Strings.gcf;
      case StockMarketIndexType.sif: return Strings.sif;
      case StockMarketIndexType.tnx: return Strings.tnx;
      case StockMarketIndexType.vix: return Strings.vix;
      case StockMarketIndexType.ks11: return Strings.ks11;
      case StockMarketIndexType.cnss: return Strings.cnss;
      case StockMarketIndexType.kq11: return Strings.kq11;
      case StockMarketIndexType.n225: return Strings.n225;
      case StockMarketIndexType.stoxx: return Strings.stoxx;
      case StockMarketIndexType.btckrw: return Strings.btckrw;
      default: return "";
    }
  }
}