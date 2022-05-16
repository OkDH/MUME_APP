import 'package:flutter/material.dart';
import 'package:mume/model/dto/mume/account.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/page/mume/infinite_detail_page.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/mume/account_page_bloc.dart';
import 'package:mume/model/dto/mume/state_map.dart';
import 'package:badges/badges.dart';
import 'package:mume/helper/print_format_helper.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (AccountPage).toString();

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends BasePageState<String, AccountPageBloc, AccountPage> {

  // 선택된 계좌 
  String selectedAccount = "ALL";

  // 필터 관련
  late List<bool> isInfiniteState;
  late List<bool> isInfiniteType;
  late List<bool> isInfiniteVersion;
  late List<bool> isOrderValue;

  //listview controller
  final _scrollController = ScrollController();

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    debugPrint("buildPage AccountPageBloc");
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 238, 252),
      body: SingleChildScrollView (
        controller: _scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(28, 12, 28, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(bloc.query["accountId"] == "ALL" ? "계좌 전체" : bloc.accountNames[int.parse(bloc.query["accountId"])]!, 
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  Container(
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {showStocksBottomSheet(context);},
                          child: Icon(Icons.add),
                          style: ElevatedButton.styleFrom(
                            // primary: Colors.white,
                            // onPrimary: Colors.blue,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(2),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {showFilterBottomSheet(context);},
                          child: Icon(Icons.filter_alt_rounded),
                          style: ElevatedButton.styleFrom(
                            // primary: Colors.white,
                            // onPrimary: Colors.blue,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(2),
                          ),
                        ),
                      ]
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(28, 0, 28, 28),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 121, 102, 255),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 0,
                    blurRadius: 5.0,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Row(children: [
                      Expanded(
                        flex: 5,
                        child: Center(
                          child: Column(children: [
                          Text("\$" + PrintFormatHelper.comma(bloc.accountState.sumAccountSeed ?? 0.0), style: TextStyle(color: Colors.white)),
                          Text("투자원금", style: TextStyle(fontSize: 10, color: Colors.white)),
                        ]),
                        )
                      ),
                      Expanded(
                        flex: 5,
                        child: Center(
                          child: Column(children: [
                          Text("\$" + PrintFormatHelper.comma(bloc.accountState.sumInfiniteSeed ?? 0.0), style: TextStyle(color: Colors.white)),
                          Text("배정씨드", style: TextStyle(fontSize: 10, color: Colors.white)),
                        ]),
                        )
                      ),
                      Expanded(
                        flex: 5,
                        child: Center(
                          child: Column(children: [
                          Text("\$" + PrintFormatHelper.comma(bloc.accountState.sumInfiniteBuyPrice ?? 0.0, decimal: 2), style: TextStyle(color: Colors.white)),
                          Text("총 매수금액", style: TextStyle(fontSize: 10, color: Colors.white)),
                        ]),
                        )
                      ),
                      Expanded(
                        flex: 5,
                        child: Center(
                          child: Column(children: [
                          Text(PrintFormatHelper.comma(bloc.accountState.ingInfiniteCount ?? 0), style: TextStyle(color: Colors.white)),
                          Text("보유종목수", style: TextStyle(fontSize: 10, color: Colors.white)),
                        ]),
                        )
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(28, 0, 0, 12),
              alignment: Alignment.bottomLeft,
              child: Text("보유종목", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
            ),
            printStockListView(),
          ],
        ),
      ),
    );
  }

  // 계좌 내 종목 리스트
  Widget printStockListView(){
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll){
        overscroll.disallowIndicator();
        return false;
      },
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: bloc.stockList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.fromLTRB(28, 12, 28, 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 0,
                  blurRadius: 0.2,
                  offset: Offset(0, 0.5), // changes position of shadow
                ),
              ],
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (BuildContext context){
                    return InfiniteDetailPage(infiniteDetail: bloc.stockList[index], accountName: bloc.accountNames[bloc.stockList[index].accountId]);
                  }
                ));
              },
              child: Container(
                padding: EdgeInsets.all(16),
                child : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Text(bloc.stockList[index].symbol, style: TextStyle(fontSize: 16),),
                        ),
                        Container(
                          child: Badge(
                            toAnimate: false,
                            shape: BadgeShape.square,
                            elevation: 0,
                            badgeColor: (bloc.stockList[index]!.infiniteState! == "진행중" ? Colors.blue[700]! :
                              bloc.stockList[index]!.infiniteState! == "매도완료" ? Colors.green :
                              bloc.stockList[index]!.infiniteState! == "매도중지" ? Colors.orange : Colors.red
                            ),
                            padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                            borderRadius: BorderRadius.circular(12),
                            badgeContent: Text(bloc.stockList[index]!.infiniteState!, style: TextStyle(fontSize: 12, color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                    //Container(width: 500, child: Divider(color: Colors.black26, thickness: 0.3)),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 12, 0, 8),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          width: 0.7,
                          color: Colors.black12
                        ),
                      ),
                      child: Column(
                        children : [
                          Row(
                            children: [
                              Container(
                                child: Text(bloc.accountNames[bloc.stockList[index].accountId]!, style: TextStyle(fontSize: 10)),
                              ),
                              if(bloc.stockList[index]!.infiniteType! == "TLP")
                                  Container(
                                    child: Text(" | " + bloc.stockList[index]!.infiniteType!, style: TextStyle(fontSize: 10)),
                                  ),
                              Container(
                                child: Text(" | " + bloc.stockList[index]!.infiniteVersion!, style: TextStyle(fontSize: 10)),
                              ),
                            ],
                          )
                        ]
                      )
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("진행률"),
                          Text(bloc.stockList[index]!.progressPer!.toStringAsFixed(2) + "%", style: TextStyle(fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.only(bottom: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: LinearProgressIndicator(
                          value: bloc.stockList[index]!.progressPer!/100,
                          backgroundColor: Colors.black12,
                          color: (bloc.stockList[index]!.infiniteState! == "원금소진" || bloc.stockList[index]!.progressPer! >= 100) ? Colors.red :
                                  bloc.stockList[index]!.progressPer! >= 50 ? Colors.orange : Colors.blue[700]!,
                          minHeight: 12,
                        ),
                      ),
                    ),

                  ],
                ),
              )
            )
          );
        }
      ),
    );
  }


  // 필터 bottom sheet
  void showFilterBottomSheet(BuildContext context){

    // 계좌 리스트
    List<DropdownMenuItem<String>> accountItemList = bloc.accountList.map(
      (value) {
        return DropdownMenuItem<String>(value: value.accountId.toString(), child: Text(value.accountAlias));
      }
    ).toList();
    accountItemList.insert(0, DropdownMenuItem<String>(value: "ALL", child: Text("전체"))); // 전체 추가

    // 진행 상태
    isInfiniteState = List.empty(growable: true);
    bloc.filter["infiniteState"].forEach((v) => isInfiniteState.add(v["value"]));
    // 타입
    isInfiniteType = List.empty(growable: true);
    bloc.filter["infiniteType"].forEach((v) => isInfiniteType.add(v["value"]));
    // 버전
    isInfiniteVersion = List.empty(growable: true);
    bloc.filter["infiniteVersion"].forEach((v) => isInfiniteVersion.add(v["value"]));
    // 정렬
    isOrderValue = List.empty(growable: true);
    bloc.filter["orderValue"].forEach((v) => isOrderValue.add(v["value"]));

    showModalBottomSheet<void>(
      context: context, 
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical( 
          top: Radius.circular(25.0),
        ),
      ),
      builder: (BuildContext context){
        return StatefulBuilder(
          builder: (context, setState) {
            return SizedBox(
              height: 450,
              child: Center(
                child: Column(
                  children: <Widget>[
                    const Text("검색 조건", style: TextStyle(fontSize: 20)),
                    const Text("계좌", style: TextStyle(fontSize: 16)),
                    DropdownButton(
                      value: selectedAccount,
                      items: accountItemList, 
                      onChanged: (value){
                        setState(() {
                          selectedAccount = value.toString();
                        });
                      }
                    ),
                    const Text("진행상태", style: TextStyle(fontSize: 16)),
                    ToggleButtons(
                      children: List.generate(bloc.filter["infiniteState"].length, 
                        (index) {
                        return Padding(
                            padding: EdgeInsets.all(2),
                            child: Text(bloc.filter["infiniteState"][index]["name"])
                          );
                        }
                      ),
                      onPressed: (int index) {
                        setState(() {
                          isInfiniteState[index] = !isInfiniteState[index];
                        });
                      },
                      isSelected: isInfiniteState
                    ),
                    const Text("타입", style: TextStyle(fontSize: 16)),
                    ToggleButtons(
                      children: List.generate(bloc.filter["infiniteType"].length, 
                        (index) {
                        return Padding(
                            padding: EdgeInsets.all(2),
                            child: Text(bloc.filter["infiniteType"][index]["name"])
                          );
                        }
                      ),
                      onPressed: (int index) {
                        setState(() {
                          isInfiniteType[index] = !isInfiniteType[index];
                        });
                      },
                      isSelected: isInfiniteType
                    ),
                    const Text("버전", style: TextStyle(fontSize: 16)),
                    ToggleButtons(
                      children: List.generate(bloc.filter["infiniteVersion"].length, 
                        (index) {
                        return Padding(
                            padding: EdgeInsets.all(2),
                            child: Text(bloc.filter["infiniteVersion"][index]["name"])
                          );
                        }
                      ),
                      onPressed: (int index) {
                        setState(() {
                          isInfiniteVersion[index] = !isInfiniteVersion[index];
                        });
                      },
                      isSelected: isInfiniteVersion
                    ),
                    const Text("정렬", style: TextStyle(fontSize: 16)),
                    ToggleButtons(
                      children: List.generate(bloc.filter["orderValue"].length, 
                        (index) {
                        return Padding(
                            padding: EdgeInsets.all(2),
                            child: Text(bloc.filter["orderValue"][index]["name"])
                          );
                        }
                      ),
                      onPressed: (int index) {
                        setState(() {
                          for (int buttonIndex = 0; buttonIndex < isOrderValue.length; buttonIndex++) {
                            if (buttonIndex == index) {
                              isOrderValue[buttonIndex] = true;
                            } else {
                              isOrderValue[buttonIndex] = false;
                            }
                          }
                        });
                      },
                      isSelected: isOrderValue
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: const Text('검색'),
                          onPressed: () {
                            bloc.query["accountId"] = selectedAccount;
                            isInfiniteState.asMap().forEach((index, v) { 
                              bloc.filter["infiniteState"][index]["value"] = v;
                            });
                            isInfiniteType.asMap().forEach((index, v) { 
                              bloc.filter["infiniteType"][index]["value"] = v;
                            });
                            isInfiniteVersion.asMap().forEach((index, v) { 
                              bloc.filter["infiniteVersion"][index]["value"] = v;
                            });
                            isOrderValue.asMap().forEach((index, v) { 
                              bloc.filter["orderValue"][index]["value"] = v;
                            });
                            bloc.getStocks(0);
                            Navigator.pop(context);
                          },
                        ),
                        ElevatedButton(
                          child: const Text('취소'),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    )
                  
                  ],
                ),
              ),
            );
          },
        );
      }
    );
  }

  // 추가 종목 리스트 bottom sheet
  void showStocksBottomSheet(BuildContext context){

    bloc.getEtfList();

    showModalBottomSheet<void>(
      context: context, 
      isScrollControlled: true,
      shape: const RoundedRectangleBorder( 
        borderRadius: BorderRadius.vertical( 
          top: Radius.circular(25.0),
        ),
      ),
      builder: (BuildContext context){
        return SizedBox(
          height: 800,
          child: Center(
            child: Column(
              children: <Widget>[
                const Text("종목 선택", style: TextStyle(fontSize: 20)),
                ListView(
                  padding: const EdgeInsets.all(8),
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: ListTile(
                        title:Text("TQQQ") ,
                      )
                    ),
                  ],
                ),
              ]
            )
          )
        );
      }
    );
  }

  // 추가 bottom sheet
  void showAddBottomSheet(BuildContext context){
    showModalBottomSheet<void>(
      context: context, 
      isScrollControlled: true,
      shape: const RoundedRectangleBorder( 
        borderRadius: BorderRadius.vertical( 
          top: Radius.circular(25.0),
        ),
      ),
      builder: (BuildContext context){
        return SizedBox(
          height: 500,
          child: Center(
            child: Column(
              children: <Widget>[
                const Text("종목 추가", style: TextStyle(fontSize: 20)),
                // 계좌
                // 무한매수/TLP, 버전, 
                // 배정원금, 원금분할, 
                // 평단가, 수량, 
                // 매수시작일, 자동기록 여부
              ]
            )
          )
        );
      }
    );

  }

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);
  }
}