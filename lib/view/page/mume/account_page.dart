import 'package:flutter/material.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/mume/account_page_bloc.dart';

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
            Text("종목리스트"),
            //getStockListView(bloc.stockList),
          ],
        ),
      ),
    );
  }

  Widget getStockListView(List<dynamic> stockList){
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: stockList.length,
      itemBuilder: (BuildContext context, int index) {
        return Text("index : " + index.toString());
      },
    );
  }

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);
  }
}