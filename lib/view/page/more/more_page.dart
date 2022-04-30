import 'package:flutter/material.dart';
import 'package:mume/view/componont/button.dart';
import 'package:mume/view/componont/require_login_widget.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/more_page_bloc.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (MorePage).toString();

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends BasePageState<String, MorePageBloc, MorePage> {

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    debugPrint("buildPage MorePageBloc");

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(MorePage.routeName),

            RequireLoginWidget(
                bloc: bloc,
                intendLoginWidget: MyButton(
                    onPressed: () => bloc.clickLogin(),
                    text: Strings.login
                ),
                child: Text("로그인 성공!!")
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