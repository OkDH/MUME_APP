import 'package:flutter/material.dart';
import 'package:mume/model/dto/mume/account.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/mume/account_page_bloc.dart';
import 'package:mume/model/dto/mume/state_map.dart';

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

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    debugPrint("buildPage AccountPageBloc");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(AccountPage.routeName),
            Container( height:1.0,
              width:500.0,
              color:Colors.black,),
            ElevatedButton(
              child: const Text("필터"),
              onPressed: () {showFilterBottomSheet(context);},
            ),
            Text("계좌 갯수 : " + bloc.accountList.length.toString()),
            Text("선택 된 계좌 : " + bloc.query["accountId"]),
            Container( height:1.0,
              width:500.0,
              color:Colors.black,),
            Text("투자 원금 : " + bloc.accountState.sumAccountSeed.toString()),
            Text("배정 씨드 : " + bloc.accountState.sumInfiniteSeed.toString()),
            Text("총 매수금액 : " + bloc.accountState.sumInfiniteBuyPrice.toString()),
            Text("보유종목수 : " + bloc.accountState.ingInfiniteCount.toString()),
            Container( height:1.0,
              width:500.0,
              color:Colors.black,),
            printStockListView(),
          ],
        ),
      ),
    );
  }

  // 계좌 내 종목 리스트
  Widget printStockListView(){
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      shrinkWrap: true,
      itemCount: bloc.stockList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
            child: ListTile(
              title:Text(bloc.stockList[index].symbol) ,
            )
          );
      },
      
    );
  }

  // filter bottom sheet
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

    showModalBottomSheet<void>(
      context: context, 
      shape: const RoundedRectangleBorder( // <-- SEE HERE
        borderRadius: BorderRadius.vertical( 
          top: Radius.circular(25.0),
        ),
      ),
      builder: (BuildContext context){
        return SizedBox(
          height: 600,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text('검색'),
                      onPressed: () => Navigator.pop(context),
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
      }
    );
  }

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);
  }
}