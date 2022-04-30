import 'package:flutter/material.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/mume/income_page_bloc.dart';

class IncomePage extends StatefulWidget {
  const IncomePage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (IncomePage).toString();

  @override
  State<IncomePage> createState() => _IncomePageState();
}

class _IncomePageState extends BasePageState<String, IncomePageBloc, IncomePage> {

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    debugPrint("buildPage IncomePageBloc");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(IncomePage.routeName),
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