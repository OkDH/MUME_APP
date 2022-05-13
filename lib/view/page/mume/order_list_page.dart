import 'package:flutter/material.dart';
import 'package:mume/view/componont/button.dart';
import 'package:mume/view/componont/require_login_widget.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/mume/mume_page_bloc.dart';
import 'package:mume/viewmodel/mume/order_list_page_bloc.dart';

class OrderListPage extends StatefulWidget {
  const OrderListPage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (OrderListPage).toString();

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends BasePageState<String, OrderListPageBloc, OrderListPage> {

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    debugPrint("buildPage OrderListPageBloc");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(OrderListPage.routeName),
            Text("query ==> ${bloc.query.toString()}"),
            Text("주문 내역 수 ==> ${bloc.stockList.length}"),
            Expanded(
              child: ListView.builder(
                itemCount: bloc.stockList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${index + 1}번째 주문\n${bloc.stockList[index].toJson().toString()}"),
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);
  }
}