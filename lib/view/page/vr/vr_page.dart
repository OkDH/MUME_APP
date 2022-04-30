import 'package:flutter/material.dart';
import 'package:mume/view/componont/button.dart';
import 'package:mume/view/componont/require_login_widget.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/assets.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/feed_page_bloc.dart';
import 'package:mume/viewmodel/main_page_bloc.dart';
import 'package:mume/viewmodel/mume_page_bloc.dart';
import 'package:mume/viewmodel/splash_page_bloc.dart';
import 'package:mume/viewmodel/vr_page_bloc.dart';

class VrPage extends StatefulWidget {
  const VrPage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (VrPage).toString();

  @override
  State<VrPage> createState() => _VrPageState();
}

class _VrPageState extends BasePageState<String, VrPageBloc, VrPage> {

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    debugPrint("buildPage VrPageBloc");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(VrPage.routeName),

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