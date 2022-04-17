import 'package:vocas_jp/view/page/base_page.dart';
import 'package:vocas_jp/view/resource/strings.dart';
import 'package:flutter/material.dart';
import 'package:vocas_jp/viewModel/base_state.dart';
import 'package:vocas_jp/viewModel/splash_page_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (SplashPage).toString();

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends BasePageState<String, SplashPageBloc, SplashPage> {

  @override
  Widget buildScreen(BuildContext context, Size windowSize) {
    return Scaffold(
      body: Center(child: Text("splash page"),),
    );
  }

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);
  }
}