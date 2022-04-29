import 'package:flutter/material.dart';
import 'package:mume/view/componont/button.dart';
import 'package:mume/view/componont/require_login_widget.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/mume_page_bloc.dart';

class MumePage extends StatefulWidget {
  const MumePage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (MumePage).toString();

  @override
  State<MumePage> createState() => _MumePageState();
}

class _MumePageState extends BasePageState<String, MumePageBloc, MumePage> {

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(MumePage.routeName),

            RequireLoginWidget(
                bloc: bloc,
                intendLoginWidget: MyButton(
                    onPressed: () => bloc.clickLogin(),
                    text: Strings.login
                ),
                child: Column(
                  children: [
                    Text("로그인 성공!!"),

                    MyButton(
                        onPressed: () => bloc.testtest(),
                        text: "asdfasdfasdf"
                    )
                  ],
                )
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