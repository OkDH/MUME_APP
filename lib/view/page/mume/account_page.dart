import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/page/mume/infinite_detail_page.dart';
import 'package:mume/view/page/mume/infinite_modify_page.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/mume/account_page_bloc.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/sizes.dart';
import 'package:badges/badges.dart';
import 'package:mume/helper/print_format_helper.dart';
import 'package:mume/helper/text_style_helper.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:mume/view/component/stock_item.dart';

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

  final _scrollController = ScrollController();

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    return Scaffold(
      body: SingleChildScrollView (
        controller: _scrollController,
        child: Container(
          padding: const EdgeInsets.all(Sizes.paddingBody),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(bloc.query["accountId"] == "ALL" ? "계좌 전체" : bloc.accountNames[int.parse(bloc.query["accountId"])] ?? "",
                      style: const TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.w600)),
                    Container(
                      child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // 종목 추가 페이지 이동
                                Navigator.of(context).push(MaterialPageRoute(
                                    fullscreenDialog: true,
                                    builder: (BuildContext context){
                                      return InfiniteModifyPage(selectedAccountId: bloc.query["accountId"], accountList: bloc.accountList,);
                                    }
                                ));
                                // showStocksBottomSheet(context);
                              },
                              child: const Icon(Icons.add),
                              style: ElevatedButton.styleFrom(
                                primary: MyColor.primary,
                                onPrimary: MyColor.onPrimary,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(2),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {showFilterBottomSheet(context);},
                              child: const Icon(Icons.filter_alt_rounded),
                              style: ElevatedButton.styleFrom(
                                primary: MyColor.primary,
                                onPrimary: MyColor.onPrimary,
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
                padding: const EdgeInsets.all(Sizes.paddingDefault),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.circular),
                  color: MyColor.primary,
                  boxShadow: [
                    BoxShadow(
                      color: MyColor.primary.withOpacity(0.6),
                      spreadRadius: 0,
                      blurRadius: 5.0,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Row(children: [
                        Expanded(
                            flex: 5,
                            child: Center(
                              child: Column(children: [
                                Text("\$" + PrintFormatHelper.comma(bloc.accountState.sumAccountSeed ?? 0.0), style: TextStyle(color: Colors.white)),
                                const Text("투자원금", style: TextStyle(fontSize: 10, color: Colors.white)),
                              ]),
                            )
                        ),
                        Expanded(
                            flex: 5,
                            child: Center(
                              child: Column(children: [
                                Text("\$" + PrintFormatHelper.comma(bloc.accountState.sumInfiniteSeed ?? 0.0), style: TextStyle(color: Colors.white)),
                                const Text("배정씨드", style: TextStyle(fontSize: 10, color: Colors.white)),
                              ]),
                            )
                        ),
                        Expanded(
                            flex: 5,
                            child: Center(
                              child: Column(children: [
                                Text("\$" + PrintFormatHelper.comma(bloc.accountState.sumInfiniteBuyPrice ?? 0.0, decimal: 2), style: TextStyle(color: Colors.white)),
                                const Text("총 매수금액", style: TextStyle(fontSize: 10, color: Colors.white)),
                              ]),
                            )
                        ),
                        Expanded(
                            flex: 5,
                            child: Center(
                              child: Column(children: [
                                Text(PrintFormatHelper.comma(bloc.accountState.ingInfiniteCount ?? 0), style: TextStyle(color: Colors.white)),
                                const Text("보유종목수", style: TextStyle(fontSize: 10, color: Colors.white)),
                              ]),
                            )
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, Sizes.paddingBody, 0, 0),
                alignment: Alignment.bottomLeft,
                child: const Text("보유종목", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.w600,)),
              ),
              printStockListView(),
            ],
          ),
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
          return Card(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(Sizes.circular),
            ),
            elevation: 0.0,
            margin: const EdgeInsets.fromLTRB(0, Sizes.paddingDefault, 0, 8),
            child: InkWell(
              onTap: () {
                // 상세페이지 이동
                Navigator.of(context).push(MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (BuildContext context){
                      return InfiniteDetailPage(infiniteDetail: bloc.stockList[index], accountName: bloc.accountNames[bloc.stockList[index].accountId]);
                    }
                ));
              },
              child: Container(
                padding: const EdgeInsets.all(Sizes.paddingDefault),
                child : Column(
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
                                child: Text(bloc.stockList[index].symbol, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                              ),
                              Container(
                                child: Text(bloc.accountNames[bloc.stockList[index].accountId]!, style: const TextStyle(fontSize: 10, color: Colors.black54)),
                              ),
                              if(bloc.stockList[index]!.infiniteType! == "TLP")
                                Container(
                                  child: Text(" | " + bloc.stockList[index]!.infiniteType!, style: const TextStyle(fontSize: 10, color: Colors.black54)),
                                ),
                              Container(
                                child: Text(" | " + bloc.stockList[index]!.infiniteVersion!, style: const TextStyle(fontSize: 10, color: Colors.black54)),
                              ),
                            ],
                          ),
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
                            padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                            borderRadius: BorderRadius.circular(12),
                            badgeContent: Text(bloc.stockList[index]!.infiniteState!, style: TextStyle(fontSize: 12, color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(Sizes.paddingSideRatio),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            child : CircularStepProgressIndicator(
                              child: Container(
                                alignment: Alignment.center, 
                                child: Text(bloc.stockList[index]!.progressPer!.toStringAsFixed(2) + "%", style: const TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              totalSteps: 100,
                              currentStep: bloc.stockList[index]!.progressPer!.round(),
                              stepSize: 10,
                              selectedColor: (bloc.stockList[index]!.infiniteState! == "원금소진" || bloc.stockList[index]!.progressPer! >= 100) ? Colors.red :
                                bloc.stockList[index]!.progressPer! >= 50 ? Colors.orange : MyColor.primary,
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
                                          child: Text(PrintFormatHelper.comma(bloc.stockList[index]!.holdingQuantity!), style: TextStyleHelper.getValueTextStyle())
                                      ),
                                      Expanded(
                                          flex: 5,
                                          child: Text("\$" + PrintFormatHelper.comma(bloc.stockList[index]!.averagePrice!, decimal: 2), style: TextStyleHelper.getValueTextStyle())
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
                                          child: Text("\$" + PrintFormatHelper.comma(bloc.stockList[index]!.stockDetail!.priceClose!, decimal: 2), style: TextStyleHelper.getValueTextStyle(value: bloc.stockList[index]!.stockDetail!.chgp!))
                                      ),
                                      Expanded(
                                          flex: 5,
                                          child: Text(PrintFormatHelper.appendPulMa(bloc.stockList[index]!.income!, decimal: 2) + "\$", style: TextStyleHelper.getValueTextStyle(value: bloc.stockList[index]!.income!))
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child: Text("(" + PrintFormatHelper.appendPulMa(bloc.stockList[index]!.stockDetail!.chgp!, decimal: 2) + "%)", style: TextStyleHelper.getSubTitleTextStyle(value: bloc.stockList[index]!.stockDetail!.chgp!))
                                      ),
                                      Expanded(
                                        flex: 5,
                                        child: Text("(" + PrintFormatHelper.appendPulMa(bloc.stockList[index]!.incomePer!, decimal: 2) + "%)", style: TextStyleHelper.getSubTitleTextStyle(value: bloc.stockList[index]!.incomePer!))
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                            ),
                          )
                        ],
                      )
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
        return DropdownMenuItem<String>(value: value.accountId.toString(), child: Text(value.accountAlias!));
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

  // 종목 추가 바텀 시트 관련 변수
  bool _isShowSecond = false;
  String addSelectedSymbol = "";
  int addSelectedAccount = 0;

  // 종목 추가 bottom sheet
  void showStocksBottomSheet(BuildContext context){

    bloc.getEtfList();

    _isShowSecond = false;
    addSelectedSymbol = "";

    // 현재 활성화 된 계좌 ID가 ALL이라면 첫번째 계좌
    if(bloc.query["accountId"] == "ALL") {
      addSelectedAccount = 0;
    } else { // 아니라면 해당 계좌의 index값 찾기
      for(int i = 0; i < bloc.accountList.length; i++){
        if(bloc.accountList[i].accountId.toString() == bloc.query["accountId"]){
          addSelectedAccount = i;
          break;
        }
      }
    }

    showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ),
        builder: (BuildContext context){
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return AnimatedContainer(
                padding: const EdgeInsets.all(Sizes.paddingDefault),
                duration: const Duration(milliseconds: 400),
                child: AnimatedCrossFade(
                  duration: const Duration(milliseconds: 400),
                  crossFadeState: _isShowSecond
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                  firstChild: Container(
                    height: MediaQuery.of(context).size.height - 100,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: Sizes.paddingDefault),
                          child: const Text("종목 선택", style: TextStyle(fontSize: Sizes.textLarge, fontWeight: FontWeight.bold)),
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: bloc.etfList.length,
                            itemBuilder: (context, index) {
                              return Card(
                                margin: const EdgeInsets.only(bottom: Sizes.paddingDefault),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(Sizes.circularSmall),
                                ),
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {
                                    setState(() { 
                                      _isShowSecond = true; 
                                      addSelectedSymbol = bloc.etfList[index].symbol!;
                                    });
                                  },
                                  child: StockItem(bloc.etfList[index]),
                                ),
                              );
                            },
                          ),
                        )
                      ]
                    ),
                  ),
                  secondChild: Container(
                    height: MediaQuery.of(context).size.height - 200,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => setState(() => _isShowSecond = false),),
                            ),
                            Container(
                              child: Text(addSelectedSymbol + " 추가", style: const TextStyle(fontSize: Sizes.textLarge, fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: Sizes.paddingSideRatio),
                          padding: const EdgeInsets.all(Sizes.paddingDefault),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(Sizes.circularSmall))
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("계좌", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.bold),),
                                    CupertinoButton(
                                      child: Text(bloc.accountList[addSelectedAccount].accountAlias!), 
                                      onPressed: () async {
                                        await showCupertinoModalPopup(
                                          context: context,
                                          builder: (context) => Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                decoration: const BoxDecoration(
                                                  color: Color(0xffffffff),
                                                  border: Border(
                                                    bottom: BorderSide(
                                                      color: Color(0xff999999),
                                                      width: 0.0,
                                                    ),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text('계좌', style: Theme.of(context).textTheme.bodyText2),
                                                      padding: const EdgeInsets.symmetric(
                                                        horizontal: 16.0,
                                                        vertical: 5.0,
                                                      ),
                                                    ),
                                                    CupertinoButton(
                                                      child: const Text('확인'),
                                                      onPressed: () {Navigator.of(context).pop();},
                                                      padding: const EdgeInsets.symmetric(
                                                        horizontal: 16.0,
                                                        vertical: 5.0,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 200,
                                                child: CupertinoPicker(
                                                  backgroundColor: Colors.white,
                                                  itemExtent: 30,
                                                  scrollController: FixedExtentScrollController(initialItem: addSelectedAccount),
                                                  onSelectedItemChanged: (int index){
                                                    setState(() { addSelectedAccount = index; });
                                                  },
                                                  children: bloc.accountList.map((e) => Text(e.accountAlias!)).toList(),
                                                ),
                                              ),
                                            ],
                                          )
                                        );
                                      }
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 1),
                                        borderRadius: const BorderRadius.all(Radius.circular(Sizes.circular))
                                      ),
                                      child: Text("날짜"),
                                    ),
                                    Container(),
                                    Container(),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
              );
            },
          );
        }
    );
  }

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);
  }
}