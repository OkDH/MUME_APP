import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:mume/model/dto/mume/infinite_detail.dart';
import 'package:mume/helper/print_format_helper.dart';

class InfiniteDetailPage extends StatefulWidget {

  final InfiniteDetail? infiniteDetail;

  InfiniteDetailPage({this.infiniteDetail});

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
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
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
                                borderRadius: BorderRadius.circular(8),
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
                        Text("진행률", style: TextStyle()),
                        Text(widget.infiniteDetail!.progressPer!.toString() + "%", style: TextStyle())
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: LinearProgressIndicator(
                        value: 0.5,
                        minHeight: 16,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Badge(
                            toAnimate: false,
                            shape: BadgeShape.square,
                            badgeColor: Colors.lightBlue,
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
                          child: Text("보유수", style: getSubTitleTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("평단가", style: getSubTitleTextStyle())
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
                          child: Text(widget.infiniteDetail!.holdingQuantity!.toString(), style: getValueTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("\$" + widget.infiniteDetail!.averagePrice!.toStringAsFixed(2), style: getValueTextStyle())
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
                          child: Text("현재가", style: getSubTitleTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("평가손익", style: getSubTitleTextStyle())
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
                          child: Text("\$" + widget.infiniteDetail!.stockDetail!.priceClose!.toStringAsFixed(2), style: getValueTextStyle(value: widget.infiniteDetail!.stockDetail!.chgp!))
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(PrintFormatHelper.appendPulMa(widget.infiniteDetail!.income!) + "\$", style: getValueTextStyle(value: widget.infiniteDetail!.income!))
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
                          child: Text("(" + PrintFormatHelper.appendPulMa(widget.infiniteDetail!.stockDetail!.chgp!) + "%)", style: getSubTitleTextStyle(value: widget.infiniteDetail!.stockDetail!.chgp!))
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("(" + PrintFormatHelper.appendPulMa(widget.infiniteDetail!.incomePer!) + "%)", style: getSubTitleTextStyle(value: widget.infiniteDetail!.incomePer!))
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
                          child: Text("시작일자", style: getSubTitleTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("자동기록", style: getSubTitleTextStyle())
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
                          child: Text(widget.infiniteDetail!.startedDate!, style: getValueTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(widget.infiniteDetail!.isAutoTrade! == true ? "ON" : "OFF", style: getValueTextStyle())
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
                          child: Text("배정원금", style: getSubTitleTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("원금분할", style: getSubTitleTextStyle())
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
                          child: Text("\$" + widget.infiniteDetail!.seed!.toString(), style: getValueTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text( widget.infiniteDetail!.divisions!.toString() + " 분할", style: getValueTextStyle())
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
                          child: Text("1회 매수금액", style: getSubTitleTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("1회 매수량", style: getSubTitleTextStyle())
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
                          child: Text("\$" + widget.infiniteDetail!.oneBuySeed!.toStringAsFixed(2), style: getValueTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(widget.infiniteDetail!.oneBuyQuantity!.toStringAsFixed(0) + "주", style: getValueTextStyle())
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
                          child: Text("매입금액", style: getSubTitleTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("평가금액", style: getSubTitleTextStyle())
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
                          child: Text("\$" + widget.infiniteDetail!.buyPrice!.toStringAsFixed(2), style: getValueTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("\$" + widget.infiniteDetail!.evalPrice!.toStringAsFixed(2), style: getValueTextStyle())
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
                          child: Text("평가손익", style: getSubTitleTextStyle())
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("수익률", style: getSubTitleTextStyle())
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
                          child: Text(PrintFormatHelper.appendPulMa(widget.infiniteDetail!.income!) + "\$", style: getValueTextStyle(value: widget.infiniteDetail!.income!))
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(PrintFormatHelper.appendPulMa(widget.infiniteDetail!.incomePer!) + "%", style: getValueTextStyle(value: widget.infiniteDetail!.incomePer!))
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            getDivider(),
            Container(
              height: 300,
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
                        Text("1"),
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

  // 메인 제목 텍스트
  TextStyle getMainTitleTextStyle(){
    return const TextStyle(fontSize: 20, fontWeight: FontWeight.w600);
  }

  // 회색 작은 텍스트
  TextStyle getSubTitleTextStyle({dynamic value}){
    if(value != null){
      if(value >= 0)
        return const TextStyle(color: Colors.red);
      else 
         return const TextStyle(color: Colors.blue);
    }
    return const TextStyle(color: Colors.black54);
  }

  // 값 출력 텍스트
  TextStyle getValueTextStyle({dynamic value}){
    if(value != null){
      if(value >= 0)
        return const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.red);
      else 
         return const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blue);
    }

    return const TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  }

   // 구분선
   Container getDivider(){
     return Container(width: 500, child: Divider(color: Colors.black12, thickness: 12.0));
   }
}