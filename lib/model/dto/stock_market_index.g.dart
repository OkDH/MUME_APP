// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_market_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stock _$$_StockFromJson(Map<String, dynamic> json) => _$_Stock(
      symbol: json['symbol'] as String?,
      stockDate: json['stockDate'] as String?,
      priceHigh: (json['priceHigh'] as num?)?.toDouble(),
      priceLow: (json['priceLow'] as num?)?.toDouble(),
      priceClose: (json['priceClose'] as num?)?.toDouble(),
      priceOpen: (json['priceOpen'] as num?)?.toDouble(),
      prevClose: (json['prevClose'] as num?)?.toDouble(),
      chg: (json['chg'] as num?)?.toDouble(),
      chgp: (json['chgp'] as num?)?.toDouble(),
      volume: (json['volume'] as num?)?.toDouble(),
      upAvg: (json['upAvg'] as num?)?.toDouble(),
      dwAvg: (json['dwAvg'] as num?)?.toDouble(),
      rsi: (json['rsi'] as num?)?.toDouble(),
      updateTime: json['updateTime'] as String?,
      sector: json['sector'] as String?,
      sectorName: json['sectorName'] as String?,
      baseRsi: (json['baseRsi'] as num?)?.toDouble(),
      isWarn: json['isWarn'] as bool?,
      lastTradeTime: json['lastTradeTime'] as String?,
      gapRsi: (json['gapRsi'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_StockToJson(_$_Stock instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'stockDate': instance.stockDate,
      'priceHigh': instance.priceHigh,
      'priceLow': instance.priceLow,
      'priceClose': instance.priceClose,
      'priceOpen': instance.priceOpen,
      'prevClose': instance.prevClose,
      'chg': instance.chg,
      'chgp': instance.chgp,
      'volume': instance.volume,
      'upAvg': instance.upAvg,
      'dwAvg': instance.dwAvg,
      'rsi': instance.rsi,
      'updateTime': instance.updateTime,
      'sector': instance.sector,
      'sectorName': instance.sectorName,
      'baseRsi': instance.baseRsi,
      'isWarn': instance.isWarn,
      'lastTradeTime': instance.lastTradeTime,
      'gapRsi': instance.gapRsi,
    };

_$_StockMarketIndex _$$_StockMarketIndexFromJson(Map<String, dynamic> json) =>
    _$_StockMarketIndex(
      dji: json['DJI'] == null
          ? null
          : Stock.fromJson(json['DJI'] as Map<String, dynamic>),
      ixic: json['IXIC'] == null
          ? null
          : Stock.fromJson(json['IXIC'] as Map<String, dynamic>),
      gspc: json['GSPC'] == null
          ? null
          : Stock.fromJson(json['GSPC'] as Map<String, dynamic>),
      sox: json['SOX'] == null
          ? null
          : Stock.fromJson(json['SOX'] as Map<String, dynamic>),
      ymf: json['YMF'] == null
          ? null
          : Stock.fromJson(json['YMF'] as Map<String, dynamic>),
      nqf: json['NQF'] == null
          ? null
          : Stock.fromJson(json['NQF'] as Map<String, dynamic>),
      esf: json['ESF'] == null
          ? null
          : Stock.fromJson(json['ESF'] as Map<String, dynamic>),
      rtyf: json['RTYF'] == null
          ? null
          : Stock.fromJson(json['RTYF'] as Map<String, dynamic>),
      krwx: json['KRWX'] == null
          ? null
          : Stock.fromJson(json['KRWX'] as Map<String, dynamic>),
      clf: json['CLF'] == null
          ? null
          : Stock.fromJson(json['CLF'] as Map<String, dynamic>),
      gcf: json['GCF'] == null
          ? null
          : Stock.fromJson(json['GCF'] as Map<String, dynamic>),
      sif: json['SIF'] == null
          ? null
          : Stock.fromJson(json['SIF'] as Map<String, dynamic>),
      tnx: json['TNX'] == null
          ? null
          : Stock.fromJson(json['TNX'] as Map<String, dynamic>),
      vix: json['VIX'] == null
          ? null
          : Stock.fromJson(json['VIX'] as Map<String, dynamic>),
      ks11: json['KS11'] == null
          ? null
          : Stock.fromJson(json['KS11'] as Map<String, dynamic>),
      kq11: json['KQ11'] == null
          ? null
          : Stock.fromJson(json['KQ11'] as Map<String, dynamic>),
      cnss: json['CNSS'] == null
          ? null
          : Stock.fromJson(json['CNSS'] as Map<String, dynamic>),
      n225: json['N225'] == null
          ? null
          : Stock.fromJson(json['N225'] as Map<String, dynamic>),
      stoxx: json['STOXX'] == null
          ? null
          : Stock.fromJson(json['STOXX'] as Map<String, dynamic>),
      btckrw: json['BTCKRW'] == null
          ? null
          : Stock.fromJson(json['BTCKRW'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StockMarketIndexToJson(_$_StockMarketIndex instance) =>
    <String, dynamic>{
      'DJI': instance.dji,
      'IXIC': instance.ixic,
      'GSPC': instance.gspc,
      'SOX': instance.sox,
      'YMF': instance.ymf,
      'NQF': instance.nqf,
      'ESF': instance.esf,
      'RTYF': instance.rtyf,
      'KRWX': instance.krwx,
      'CLF': instance.clf,
      'GCF': instance.gcf,
      'SIF': instance.sif,
      'TNX': instance.tnx,
      'VIX': instance.vix,
      'KS11': instance.ks11,
      'KQ11': instance.kq11,
      'CNSS': instance.cnss,
      'N225': instance.n225,
      'STOXX': instance.stoxx,
      'BTCKRW': instance.btckrw,
    };

_$_MumeStockMarketIndex _$$_MumeStockMarketIndexFromJson(
        Map<String, dynamic> json) =>
    _$_MumeStockMarketIndex(
      drn: json['DRN'] == null
          ? null
          : Stock.fromJson(json['DRN'] as Map<String, dynamic>),
      tna: json['TNA'] == null
          ? null
          : Stock.fromJson(json['TNA'] as Map<String, dynamic>),
      midu: json['MIDU'] == null
          ? null
          : Stock.fromJson(json['MIDU'] as Map<String, dynamic>),
      dusl: json['DUSL'] == null
          ? null
          : Stock.fromJson(json['DUSL'] as Map<String, dynamic>),
      dpst: json['DPST'] == null
          ? null
          : Stock.fromJson(json['DPST'] as Map<String, dynamic>),
      retl: json['RETL'] == null
          ? null
          : Stock.fromJson(json['RETL'] as Map<String, dynamic>),
      udow: json['UDOW'] == null
          ? null
          : Stock.fromJson(json['UDOW'] as Map<String, dynamic>),
      fngu: json['FNGU'] == null
          ? null
          : Stock.fromJson(json['FNGU'] as Map<String, dynamic>),
      pill: json['PILL'] == null
          ? null
          : Stock.fromJson(json['PILL'] as Map<String, dynamic>),
      utsl: json['UTSL'] == null
          ? null
          : Stock.fromJson(json['UTSL'] as Map<String, dynamic>),
      bnku: json['BNKU'] == null
          ? null
          : Stock.fromJson(json['BNKU'] as Map<String, dynamic>),
      hibl: json['HIBL'] == null
          ? null
          : Stock.fromJson(json['HIBL'] as Map<String, dynamic>),
      labu: json['LABU'] == null
          ? null
          : Stock.fromJson(json['LABU'] as Map<String, dynamic>),
      webl: json['WEBL'] == null
          ? null
          : Stock.fromJson(json['WEBL'] as Map<String, dynamic>),
      nail: json['NAIL'] == null
          ? null
          : Stock.fromJson(json['NAIL'] as Map<String, dynamic>),
      dfen: json['DFEN'] == null
          ? null
          : Stock.fromJson(json['DFEN'] as Map<String, dynamic>),
      soxl: json['SOXL'] == null
          ? null
          : Stock.fromJson(json['SOXL'] as Map<String, dynamic>),
      tpor: json['TPOR'] == null
          ? null
          : Stock.fromJson(json['TPOR'] as Map<String, dynamic>),
      want: json['WANT'] == null
          ? null
          : Stock.fromJson(json['WANT'] as Map<String, dynamic>),
      fas: json['FAS'] == null
          ? null
          : Stock.fromJson(json['FAS'] as Map<String, dynamic>),
      tqqq: json['TQQQ'] == null
          ? null
          : Stock.fromJson(json['TQQQ'] as Map<String, dynamic>),
      cure: json['CURE'] == null
          ? null
          : Stock.fromJson(json['CURE'] as Map<String, dynamic>),
      tecl: json['TECL'] == null
          ? null
          : Stock.fromJson(json['TECL'] as Map<String, dynamic>),
      bulz: json['BULZ'] == null
          ? null
          : Stock.fromJson(json['BULZ'] as Map<String, dynamic>),
      upro: json['UPRO'] == null
          ? null
          : Stock.fromJson(json['UPRO'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MumeStockMarketIndexToJson(
        _$_MumeStockMarketIndex instance) =>
    <String, dynamic>{
      'DRN': instance.drn,
      'TNA': instance.tna,
      'MIDU': instance.midu,
      'DUSL': instance.dusl,
      'DPST': instance.dpst,
      'RETL': instance.retl,
      'UDOW': instance.udow,
      'FNGU': instance.fngu,
      'PILL': instance.pill,
      'UTSL': instance.utsl,
      'BNKU': instance.bnku,
      'HIBL': instance.hibl,
      'LABU': instance.labu,
      'WEBL': instance.webl,
      'NAIL': instance.nail,
      'DFEN': instance.dfen,
      'SOXL': instance.soxl,
      'TPOR': instance.tpor,
      'WANT': instance.want,
      'FAS': instance.fas,
      'TQQQ': instance.tqqq,
      'CURE': instance.cure,
      'TECL': instance.tecl,
      'BULZ': instance.bulz,
      'UPRO': instance.upro,
    };
