import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:mume/model/dto/mume/infinite_detail.dart';
import 'package:mume/helper/print_format_helper.dart';
import 'package:mume/helper/text_style_helper.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/sizes.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class InfiniteDetailPage extends StatefulWidget {

  final InfiniteDetail? infiniteDetail;
  //계좌명 출력용 변수
  final String? accountName;

  InfiniteDetailPage({this.infiniteDetail, this.accountName});

  _InfiniteDetailState createState() => _InfiniteDetailState();
}

class _InfiniteDetailState extends State<InfiniteDetailPage> with SingleTickerProviderStateMixin {
  
  TabController? _buySellTabController;

  @override
  void initState() {
    _buySellTabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _buySellTabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      title: Text(widget.infiniteDetail!.symbol!),
      alwaysShowLeadingAndAction: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () {
          },
        ),
        IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
            },
        )
      ],
      headerWidget: Container(
        margin: const EdgeInsets.only(top: kToolbarHeight),
        padding: const EdgeInsets.fromLTRB(Sizes.paddingBody, 0, Sizes.paddingBody, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: Text(widget.infiniteDetail!.symbol!, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                      ),
                      Container(
                        child: Text(widget.accountName!, style: const TextStyle(fontSize: Sizes.textSmall, color: Colors.black54)),
                      ),
                      if(widget.infiniteDetail!.infiniteType! == "TLP")
                        Container(
                          child: Text(" | " + widget.infiniteDetail!.infiniteType!, style: const TextStyle(fontSize: Sizes.textSmall, color: Colors.black54)),
                        ),
                      Container(
                        child: Text(" | " + widget.infiniteDetail!.infiniteVersion!, style: const TextStyle(fontSize: Sizes.textSmall, color: Colors.black54)),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Badge(
                    toAnimate: false,
                    shape: BadgeShape.square,
                    elevation: 0,
                    badgeColor: (widget.infiniteDetail!.infiniteState! == "진행중" ? Colors.blue[700]! :
                      widget.infiniteDetail!.infiniteState! == "매도완료" ? Colors.green :
                      widget.infiniteDetail!.infiniteState! == "매도중지" ? Colors.orange : Colors.red
                    ),
                    padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                    borderRadius: BorderRadius.circular(12),
                    badgeContent: Text(widget.infiniteDetail!.infiniteState!, style: TextStyle(fontSize: 12, color: Colors.white)),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(Sizes.paddingDefault),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: Sizes.paddingBody),
                    child : CircularStepProgressIndicator(
                      child: Container(
                        alignment: Alignment.center, 
                        child: Text(widget.infiniteDetail!.progressPer!.toStringAsFixed(2) + "%", style: const TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      totalSteps: 100,
                      currentStep: widget.infiniteDetail!.progressPer!.round(),
                      stepSize: 10,
                      selectedColor: (widget.infiniteDetail!.infiniteState! == "원금소진" || widget.infiniteDetail!.progressPer! >= 100) ? Colors.red :
                        widget.infiniteDetail!.progressPer! >= 50 ? Colors.orange : MyColor.primary,
                      unselectedColor: Colors.grey[200],
                      padding: 0,
                      width: 120,
                      height: 120,
                      selectedStepSize: 12,
                      roundedCap: (_, __) => true,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children : [
                        Container(
                          child: Row(children: [
                            Expanded(
                                flex: 5,
                                child: Text("보유수", style: TextStyleHelper.getSubTitleTextStyle())
                            ),
                            Expanded(
                                flex: 5,
                                child: Text("평단가", style: TextStyleHelper.getSubTitleTextStyle())
                            ),
                          ]),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: Text(PrintFormatHelper.comma(widget.infiniteDetail!.holdingQuantity!), style: TextStyleHelper.getValueTextStyle())
                              ),
                              Expanded(
                                  flex: 5,
                                  child: Text("\$" + PrintFormatHelper.comma(widget.infiniteDetail!.averagePrice!, decimal: 2), style: TextStyleHelper.getValueTextStyle())
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: Text("현재가", style: TextStyleHelper.getSubTitleTextStyle())
                              ),
                              Expanded(
                                  flex: 5,
                                  child: Text("평가손익", style: TextStyleHelper.getSubTitleTextStyle())
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: Text("\$" + PrintFormatHelper.comma(widget.infiniteDetail!.stockDetail!.priceClose!, decimal: 2), style: TextStyleHelper.getValueTextStyle(value: widget.infiniteDetail!.stockDetail!.chgp!))
                              ),
                              Expanded(
                                  flex: 5,
                                  child: Text(PrintFormatHelper.appendPulMa(widget.infiniteDetail!.income!, decimal: 2) + "\$", style: TextStyleHelper.getValueTextStyle(value: widget.infiniteDetail!.income!))
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Text("(" + PrintFormatHelper.appendPulMa(widget.infiniteDetail!.stockDetail!.chgp!, decimal: 2) + "%)", style: TextStyleHelper.getSubTitleTextStyle(value: widget.infiniteDetail!.stockDetail!.chgp!))
                              ),
                              Expanded(
                                flex: 5,
                                child: Text("(" + PrintFormatHelper.appendPulMa(widget.infiniteDetail!.incomePer!, decimal: 2) + "%)", style: TextStyleHelper.getSubTitleTextStyle(value: widget.infiniteDetail!.incomePer!))
                              ),
                            ],
                          ),
                        ),
                      ]
                    ),
                  )
                ]
              )
            ),
          ],
        )
      ),
      body: [
        Container(
          padding: const EdgeInsets.fromLTRB(Sizes.paddingBody, 0, Sizes.paddingBody, Sizes.paddingBody),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(bottom: Sizes.paddingDefault),
                child: const Text("기본정보", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.w600)),
              ),
              Card(
                margin: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(Sizes.circular),
                ),
                elevation: 0.0,
                child: Container(
                  padding: const EdgeInsets.all(Sizes.paddingDefault),
                  child : Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text("시작일자", style: TextStyleHelper.getSubTitleTextStyle())
                            ),
                            Expanded(
                              flex: 5,
                              child: Text("자동기록", style: TextStyleHelper.getSubTitleTextStyle())
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text(widget.infiniteDetail!.startedDate!, style: TextStyleHelper.getValueTextStyle())
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(widget.infiniteDetail!.isAutoTrade! == true ? "ON" : "OFF", style: TextStyleHelper.getValueTextStyle())
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text("배정원금", style: TextStyleHelper.getSubTitleTextStyle())
                            ),
                            Expanded(
                              flex: 5,
                              child: Text("원금분할", style: TextStyleHelper.getSubTitleTextStyle())
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text("\$" + PrintFormatHelper.comma(widget.infiniteDetail!.seed!), style: TextStyleHelper.getValueTextStyle())
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(PrintFormatHelper.comma(widget.infiniteDetail!.divisions!) + " 분할", style: TextStyleHelper.getValueTextStyle())
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text("1회 매수금액", style: TextStyleHelper.getSubTitleTextStyle())
                            ),
                            Expanded(
                              flex: 5,
                              child: Text("1회 매수량", style: TextStyleHelper.getSubTitleTextStyle())
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text("\$" + PrintFormatHelper.comma(widget.infiniteDetail!.oneBuySeed!, decimal: 2), style: TextStyleHelper.getValueTextStyle())
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(PrintFormatHelper.comma(widget.infiniteDetail!.oneBuyQuantity!) + "주", style: TextStyleHelper.getValueTextStyle())
                            ),
                          ],
                        ),
                      ),
                    ]
                  )
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: Sizes.paddingDefault, bottom: Sizes.paddingDefault),
                child: const Text("손익현황", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.w600)),
              ),
              Card(
                margin: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(Sizes.circular),
                ),
                elevation: 0.0,
                child: Container(
                  padding: const EdgeInsets.all(Sizes.paddingDefault),
                  child : Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text("매입금액", style: TextStyleHelper.getSubTitleTextStyle())
                            ),
                            Expanded(
                              flex: 5,
                              child: Text("평가금액", style: TextStyleHelper.getSubTitleTextStyle())
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text("\$" + PrintFormatHelper.comma(widget.infiniteDetail!.buyPrice!, decimal: 2), style: TextStyleHelper.getValueTextStyle())
                            ),
                            Expanded(
                              flex: 5,
                              child: Text("\$" + PrintFormatHelper.comma(widget.infiniteDetail!.evalPrice!, decimal: 2), style: TextStyleHelper.getValueTextStyle())
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text("평가손익", style: TextStyleHelper.getSubTitleTextStyle())
                            ),
                            Expanded(
                              flex: 5,
                              child: Text("수익률", style: TextStyleHelper.getSubTitleTextStyle())
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text(PrintFormatHelper.appendPulMa(widget.infiniteDetail!.income!, decimal: 2) + "\$", style: TextStyleHelper.getValueTextStyle(value: widget.infiniteDetail!.income!))
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(PrintFormatHelper.appendPulMa(widget.infiniteDetail!.incomePer!, decimal: 2) + "%", style: TextStyleHelper.getValueTextStyle(value: widget.infiniteDetail!.incomePer!))
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(
                          25.0,
                        ),
                      ),
                      child: TabBar(
                        controller: _buySellTabController,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.blue,
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: 'BUY'),
                          Tab(text: 'SELL'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _buySellTabController,
                        children: [
                          Container(
                            child: ListView.builder(
                              padding: const EdgeInsets.all(8),
                              //shrinkWrap: true,
                              itemCount: widget.infiniteDetail!.buyTradeInfoList!.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                    child: ListTile(
                                      title:Text(widget.infiniteDetail!.historyList![index].tradeType!) ,
                                      subtitle: Text(widget.infiniteDetail!.historyList![index].tradeDate!),
                                      onTap: () {
                                        // TODO : 매매내역 수정
                                      },
                                    ),
                                  );
                              },
                            ),
                          ),
                          Text("2")
                        ],
                      ),
                    ),
                  ]
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("흐름차트", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                    ),
                  ]
                )
              ),
              // Container(
              //   padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
              //   child: Column(
              //     children: [
              //       Container(
              //         alignment: Alignment.centerLeft,
              //         padding: EdgeInsets.only(bottom: 10),
              //         child: Text("매매내역", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              //       ),
              //       ListView.builder(
              //         padding: const EdgeInsets.all(8),
              //         shrinkWrap: true,
              //         itemCount: widget.infiniteDetail!.historyList!.length,
              //         itemBuilder: (BuildContext context, int index) {
              //           return Card(
              //               child: ListTile(
              //                 title:Text(widget.infiniteDetail!.historyList![index].tradeType!) ,
              //                 subtitle: Text(widget.infiniteDetail!.historyList![index].tradeDate!),
              //                 onTap: () {
              //                   // TODO : 매매내역 수정
              //                 },
              //               ),
              //             );
              //           },
              //         ),
              //       ]
              //     )
              //   ),
              ],
            ),
          ),
      ]
    );
  }
}
