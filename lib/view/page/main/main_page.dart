import 'package:flutter/material.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/assets.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/main/main_page_bloc.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/sizes.dart';
import 'package:mume/helper/print_format_helper.dart';
import 'package:mume/helper/text_style_helper.dart';
import 'package:mume/model/dto/market_index.dart';
import 'package:mume/model/dto/stock.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (MainPage).toString();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends BasePageState<String, MainPageBloc, MainPage> {

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(Sizes.paddingBody),
              decoration: const BoxDecoration(
                color: MyColor.primary,
              ),
              child: Column(
                children: [
                  Container(
                    child: const Text("MUME", style: TextStyle(fontSize: Sizes.textLarge, color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: Sizes.paddingDefault),
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _getMarketIndexCart(
                          name: "다우산업",
                          close: PrintFormatHelper.comma(bloc.marketIndex.dji!.priceClose, decimal: 2),
                          chg: bloc.marketIndex.dji!.chg,
                          chgp: bloc.marketIndex.dji!.chgp,
                        ),
                        // _getMarketIndexCart(
                        //   name: "나스닥 종합",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.ixic!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.ixic!.chg,
                        //   chgp: bloc.marketIndex.ixic!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "S&P 500",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.gspc!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.gspc!.chg,
                        //   chgp: bloc.marketIndex.gspc!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "필라델피아 반도체",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.sox!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.sox!.chg,
                        //   chgp: bloc.marketIndex.sox!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "다우산업 선물",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.ymf!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.ymf!.chg,
                        //   chgp: bloc.marketIndex.ymf!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "나스닥 선물",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.nqf!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.nqf!.chg,
                        //   chgp: bloc.marketIndex.nqf!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "S&P 500 선물",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.esf!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.esf!.chg,
                        //   chgp: bloc.marketIndex.esf!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "러셀 2000 선물",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.rtyf!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.rtyf!.chg,
                        //   chgp: bloc.marketIndex.rtyf!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "환율",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.krwx!.priceClose, decimal: 0) + "원",
                        //   chg: bloc.marketIndex.krwx!.chg,
                        //   chgp: bloc.marketIndex.krwx!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "원유",
                        //   close: "\$" + PrintFormatHelper.comma(bloc.marketIndex.clf!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.clf!.chg,
                        //   chgp: bloc.marketIndex.clf!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "금",
                        //   close: "\$" + PrintFormatHelper.comma(bloc.marketIndex.gcf!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.gcf!.chg,
                        //   chgp: bloc.marketIndex.gcf!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "은",
                        //   close: "\$" + PrintFormatHelper.comma(bloc.marketIndex.sif!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.sif!.chg,
                        //   chgp: bloc.marketIndex.sif!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "미국 국채 10년물 금리",
                        //   close: "\$" + PrintFormatHelper.comma(bloc.marketIndex.tnx!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.tnx!.chg,
                        //   chgp: bloc.marketIndex.tnx!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "변동성지수(VIX)",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.vix!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.vix!.chg,
                        //   chgp: bloc.marketIndex.vix!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "코스피",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.ks11!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.ks11!.chg,
                        //   chgp: bloc.marketIndex.ks11!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "코스닥",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.kq11!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.kq11!.chg,
                        //   chgp: bloc.marketIndex.kq11!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "상해종합",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.cnss!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.cnss!.chg,
                        //   chgp: bloc.marketIndex.cnss!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "니케이 255",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.n225!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.n225!.chg,
                        //   chgp: bloc.marketIndex.n225!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "유로스톡스",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.stoxx!.priceClose, decimal: 2),
                        //   chg: bloc.marketIndex.stoxx!.chg,
                        //   chgp: bloc.marketIndex.stoxx!.chgp,
                        // ),
                        // _getMarketIndexCart(
                        //   name: "비트코인",
                        //   close: PrintFormatHelper.comma(bloc.marketIndex.btckrw!.priceClose, decimal: 0) + "원",
                        //   chg: bloc.marketIndex.btckrw!.chg,
                        //   chgp: bloc.marketIndex.btckrw!.chgp,
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(Sizes.paddingBody),
              child: Column(
                children: [
                  Container(
                    // margin: const EdgeInsets.fromLTRB(0, Sizes.paddingBody, 0, 0),
                    alignment: Alignment.bottomLeft,
                    child: const Text("3X ETF", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.w600,)),
                  ),
                  // ListView.builder(
                  //   itemCount: bloc.etfList.length,
                  //   itemBuilder: (context, index) {
                  //     return Text(bloc.etfList[index].symbol!);
                  //   },
                  // ),
                ]
              ),
            )
          ],
        ),
      )
    );
  }

  Card _getMarketIndexCart({String? name, String? close, double? chg, double? chgp}){
    return Card(
      shape: RoundedRectangleBorder(
        // side: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(Sizes.circularSmall),
      ),
      margin: const EdgeInsets.only(right: Sizes.paddingSideRatio),
      child: Container(
        width: 140,
        padding: const EdgeInsets.all(Sizes.paddingDefault),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(name!, style: const TextStyle(fontSize: Sizes.textSmall),)
            ),
            Container(
              child: Text(close!, style: const TextStyle(fontSize: Sizes.textMiddle),),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 2),
                  child: Text(PrintFormatHelper.appendUpDown(chg, decimal: 2), style: TextStyleHelper.getValueTextStyle(value: chg, fontSize: Sizes.textSmall),),
                ),
                Container(
                  child: Text("(" + PrintFormatHelper.appendPulMa(chgp, decimal: 2) + "%)", style: TextStyleHelper.getValueTextStyle(value: chgp, fontSize: Sizes.textSmall),)
                ),
              ],
            )
          ],
        ),
      )
    );
  }

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);
  }

}