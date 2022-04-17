import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/login_page_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (LoginPage).toString();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BasePageState<String, LoginPageBloc, LoginPage> {

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Center(child: Text("login page"),),
          const Spacer(),

          // Visibility(
          //   visible: Platform.isIOS,
          //   child: Paddings.basic(windowSize,
          //     Buttons.round(
          //       text: LoginType.apple.name.toUpperCase(),
          //       onPressed: () => bloc.clickLogin(LoginType.apple)
          //     ),
          //   ),
          // ),
          // Paddings.basic(windowSize,
          //   Buttons.round(
          //     text: LoginType.google.name.toUpperCase(),
          //     onPressed: () => bloc.clickLogin(LoginType.google)
          //   )
          // ),
          // const Spacer(),
        ],
      ),
    );
  }

  List<Widget> loginButtons() {
    return [

    ];
  }
}