import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
import 'package:syncfusion_flutter_gauges/gauges.dart';


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
                      // shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        _getMarketIndexCard(
                          name: "다우산업",
                          stock: bloc.marketIndex.dji, 
                        ),
                        _getMarketIndexCard(
                          name: "나스닥 종합",
                          stock: bloc.marketIndex.ixic, 
                        ),
                        _getMarketIndexCard(
                          name: "S&P 500",
                          stock: bloc.marketIndex.gspc, 
                        ),
                        _getMarketIndexCard(
                          name: "필라델피아 반도체",
                          stock: bloc.marketIndex.sox, 
                        ),
                        _getMarketIndexCard(
                          name: "다우산업 선물",
                          stock: bloc.marketIndex.ymf, 
                        ),
                        _getMarketIndexCard(
                          name: "나스닥 선물",
                          stock: bloc.marketIndex.nqf, 
                        ),
                        _getMarketIndexCard(
                          name: "S&P 500 선물",
                          stock: bloc.marketIndex.esf, 
                        ),
                        _getMarketIndexCard(
                          name: "러셀 2000 선물",
                          stock: bloc.marketIndex.rtyf, 
                        ),
                        _getMarketIndexCard(
                          name: "환율",
                          stock: bloc.marketIndex.krwx, 
                          postfix: "원"
                        ),
                        _getMarketIndexCard(
                          name: "원유",
                          stock: bloc.marketIndex.clf, 
                          prefix: "\$"
                        ),
                        _getMarketIndexCard(
                          name: "금",
                          stock: bloc.marketIndex.gcf, 
                          prefix: "\$"
                        ),
                        _getMarketIndexCard(
                          name: "은",
                          stock: bloc.marketIndex.sif, 
                          prefix: "\$"
                        ),
                        _getMarketIndexCard(
                          name: "미국 국채 10년물 금리",
                          stock: bloc.marketIndex.tnx, 
                          prefix: "\$"
                        ),
                        _getMarketIndexCard(
                          name: "변동성지수(VIX)",
                          stock: bloc.marketIndex.vix, 
                        ),
                        _getMarketIndexCard(
                          name: "코스피",
                          stock: bloc.marketIndex.ks11, 
                        ),
                        _getMarketIndexCard(
                          name: "코스닥",
                          stock: bloc.marketIndex.kq11, 
                        ),
                        _getMarketIndexCard(
                          name: "상해종합",
                          stock: bloc.marketIndex.cnss, 
                        ),
                        _getMarketIndexCard(
                          name: "니케이 255",
                          stock: bloc.marketIndex.n225, 
                        ),
                        _getMarketIndexCard(
                          name: "유로스톡스 50",
                          stock: bloc.marketIndex.stoxx, 
                        ),
                        _getMarketIndexCard(
                          name: "비트코인",
                          stock: bloc.marketIndex.btckrw,
                          postfix: "원",
                          decimal: 0
                        ),
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
                  Row(
                    // margin: const EdgeInsets.fromLTRB(0, Sizes.paddingBody, 0, 0),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                      const Text("무한매수 종목", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.w600,)),
                      if(bloc.etfList.isNotEmpty)
                        Text("마지막 업테이트 : " + DateFormat("yyyy-MM-dd hh:mm").format(DateTime.parse(bloc.etfList[0].updateTime!)),
                          style: const TextStyle(fontSize: Sizes.textSmall, color: Colors.black54)),
                    ],
                  ),
                  NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (overscroll){
                      overscroll.disallowIndicator();
                      return false;
                    },
                    child : ListView.builder(
                      shrinkWrap: true,
                      itemCount: bloc.etfList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.only(top: Sizes.paddingDefault),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Sizes.circularSmall),
                          ),
                          elevation: 0,
                          child: Container(
                            padding: const EdgeInsets.all(Sizes.paddingDefault),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: Sizes.paddingDefault),
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SfRadialGauge(
                                          axes: <RadialAxis>[
                                            RadialAxis(
                                              minimum: 0,
                                              maximum: 100,
                                              showLabels: false,
                                              showTicks: false,
                                              axisLineStyle: const AxisLineStyle(
                                                thickness: 0.2,
                                                cornerStyle: CornerStyle.bothCurve,
                                                color: Colors.black12,
                                                thicknessUnit: GaugeSizeUnit.factor,
                                              ),
                                              pointers: <GaugePointer>[
                                                RangePointer(
                                                  enableAnimation: true,
                                                  value: bloc.etfList[index].rsi!,
                                                  cornerStyle: CornerStyle.bothCurve,
                                                  width: 0.2,
                                                  sizeUnit: GaugeSizeUnit.factor,
                                                  color: bloc.etfList[index].gapRsi! >= 0 ? Colors.red : bloc.etfList[index].gapRsi! > -5 ? Colors.orange : MyColor.primary
                                                ),
                                                MarkerPointer(
                                                  enableAnimation: true,
                                                  value: bloc.etfList[index].baseRsi!,
                                                  markerType: MarkerType.invertedTriangle,
                                                  color: bloc.etfList[index].gapRsi! >= 0 ? Colors.red : bloc.etfList[index].gapRsi! > -5 ? Colors.orange : MyColor.primary,
                                                  markerWidth: 8,
                                                  markerHeight: 8,
                                                  markerOffset: -7,
                                                )
                                              ],
                                              annotations: <GaugeAnnotation>[
                                                GaugeAnnotation(
                                                  positionFactor: 0.1,
                                                  angle: 90,
                                                  widget: Text(bloc.etfList[index].rsi!.toStringAsFixed(2), style: const TextStyle(fontSize: Sizes.textSmall, fontWeight: FontWeight.bold),)
                                                )
                                              ]
                                            )
                                          ]
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(bloc.etfList[index].symbol!, style: TextStyle(fontSize: Sizes.textMiddle),)
                                          ),
                                          Container(
                                            child: Text(bloc.etfList[index].sectorName!, style: TextStyle(fontSize: Sizes.textSmall, color: Colors.black54),)
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Text("\$" + PrintFormatHelper.comma(bloc.etfList[index].priceClose, decimal: 2), style: TextStyle(fontSize: Sizes.textMiddle),),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(right: 2),
                                            child: Text(PrintFormatHelper.appendUpDown(bloc.etfList[index].chg, decimal: 2), style: TextStyleHelper.getValueTextStyle(value: bloc.etfList[index].chg, fontSize: Sizes.textSmall),),
                                          ),
                                          Container(
                                            child: Text("(" + PrintFormatHelper.appendPulMa(bloc.etfList[index].chgp, decimal: 2) + "%)", style: TextStyleHelper.getValueTextStyle(value: bloc.etfList[index].chgp, fontSize: Sizes.textSmall),)
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                          ,
                        );
                      },
                    ),
                  ),
                ]
              ),
            )
          ],
        ),
      )
    );
  }

  // 시장지수 카드
  Widget _getMarketIndexCard({required String name, Stock? stock, int decimal = 2, String prefix = "", String postfix = ""}){
    if(stock == null)
      return Container();
    
    return Card(
      shape: RoundedRectangleBorder(
        // side: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(Sizes.circularSmall),
      ),
      margin: const EdgeInsets.only(right: Sizes.paddingSideRatio),
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(Sizes.paddingDefault),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(name, style: const TextStyle(fontSize: Sizes.textSmall),)
            ),
            Container(
              child: Text(prefix + PrintFormatHelper.comma(stock.priceClose, decimal: decimal) + postfix, style: const TextStyle(fontSize: Sizes.textMiddle),),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 2),
                  child: Text(PrintFormatHelper.appendUpDown(stock.chg, decimal: decimal), style: TextStyleHelper.getValueTextStyle(value: stock.chg, fontSize: Sizes.textSmall),),
                ),
                Container(
                  child: Text("(" + PrintFormatHelper.appendPulMa(stock.chgp, decimal: 2) + "%)", style: TextStyleHelper.getValueTextStyle(value: stock.chgp, fontSize: Sizes.textSmall),)
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