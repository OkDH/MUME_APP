import 'dart:async';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:mume/model/dto/mume/infinite_detail.dart';
import 'package:mume/helper/print_format_helper.dart';
import 'package:mume/helper/text_style_helper.dart';
import 'package:mume/view/component/text.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/sizes.dart';

class InfiniteDetailPage extends StatefulWidget {

  final InfiniteDetail? infiniteDetail;
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
    return Scaffold(
      appBar: AppBar(
        // title: MyText(widget.infiniteDetail!.symbol!),
        // centerTitle: true,
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
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Sizes.paddingBody),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.infiniteDetail!.symbol!, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                        Row(
                          children: [
                            Container(
                              child: Badge(
                                toAnimate: false,
                                shape: BadgeShape.square,
                                badgeColor: (widget.infiniteDetail!.infiniteState! == "진행중" ? Colors.blue[700]! :
                                  widget.infiniteDetail!.infiniteState! == "매도완료" ? Colors.green :
                                  widget.infiniteDetail!.infiniteState! == "매도중지" ? Colors.orange : Colors.red
                                ),
                                padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                                borderRadius: BorderRadius.circular(12),
                                badgeContent: Text(widget.infiniteDetail!.infiniteState!, style: TextStyle(fontSize: 12, color: Colors.white)),
                              )
                            )
                          ]
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 12, 0, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("진행률"),
                        Text(widget.infiniteDetail!.progressPer!.toStringAsFixed(2) + "%", style: TextStyle(fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: LinearProgressIndicator(
                        value: widget.infiniteDetail!.progressPer!/100,
                        backgroundColor: Colors.black12,
                        color: (widget.infiniteDetail!.infiniteState! == "원금소진" || widget.infiniteDetail!.progressPer! >= 100) ? Colors.red :
                                widget.infiniteDetail!.progressPer! >= 50 ? Colors.orange : Colors.blue[700]!,
                        minHeight: 18,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Badge(
                            toAnimate: false,
                            shape: BadgeShape.square,
                            badgeColor: Colors.green,
                            elevation: 0,
                            padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                            borderRadius: BorderRadius.circular(8),
                            badgeContent: Text(widget.accountName!, style: TextStyle(fontSize: 12, color: Colors.white)),
                          )
                        ),
                        if(widget.infiniteDetail!.infiniteType! == "TLP")
                           Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Badge(
                              toAnimate: false,
                              shape: BadgeShape.square,
                              badgeColor: Colors.orange,
                              elevation: 0,
                              padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                              borderRadius: BorderRadius.circular(8),
                              badgeContent: Text(widget.infiniteDetail!.infiniteType!, style: TextStyle(fontSize: 12, color: Colors.white)),
                            )
                          ),
                        Container(
                          child: Badge(
                            toAnimate: false,
                            shape: BadgeShape.square,
                            badgeColor: Colors.lightBlue,
                            elevation: 0,
                            padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                            borderRadius: BorderRadius.circular(8),
                            badgeContent: Text(widget.infiniteDetail!.infiniteVersion!, style: TextStyle(fontSize: 12, color: Colors.white)),
                          )
                        ),
                      ]
                    ),
                  ),
                ]
              ),
            ),
            getDivider(),
            Container(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text("보유수", style: TextStyleHelper.getSubTitleTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("평단가", style: TextStyleHelper.getSubTitleTextStyle())
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
                    padding: EdgeInsets.only(bottom: 5),
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
                    padding: EdgeInsets.only(bottom: 5),
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
                    //padding: EdgeInsets.only(bottom: 10),
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
                ],
              ),
            ),
            getDivider(),
            Container(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("기본정보", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
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
                ],
              ),
            ),
            getDivider(),
            Container(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("손익현황", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
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
                    padding: EdgeInsets.only(bottom: 10),
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
                    padding: EdgeInsets.only(bottom: 5),
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
                    //padding: EdgeInsets.only(bottom: 10),
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
            getDivider(),
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
            getDivider(),
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
            getDivider(),
            Container(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("매매내역", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.all(8),
                    shrinkWrap: true,
                    itemCount: widget.infiniteDetail!.historyList!.length,
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
                ]
              )
            ),
          ],
        ),
      ),
    );
  }

   // 구분선
   Container getDivider(){
     return Container(width: 500, child: Divider(color: Colors.black12, thickness: 12.0));
   }
}