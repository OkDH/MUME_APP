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