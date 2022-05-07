import 'package:flutter/material.dart';
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
            getStockListView(bloc.stockList),
          ],
        ),
      ),
    );
  }

  Widget getStockListView(List<dynamic> stockList){
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      shrinkWrap: true,
      itemCount: stockList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
            child: ListTile(
              title:Text(stockList[index].symbol) ,
            )
          );
      },
      
    );
  }

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);
  }
}