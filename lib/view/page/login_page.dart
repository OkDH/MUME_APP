import 'dart:io';

import 'package:vocas_jp/model/dto/user.dart';
import 'package:vocas_jp/model/enums/login_type.dart';
import 'package:vocas_jp/view/component/buttons.dart';
import 'package:vocas_jp/view/component/paddings.dart';
import 'package:vocas_jp/view/page/base_page.dart';
import 'package:vocas_jp/view/resource/strings.dart';
import 'package:flutter/material.dart';
import 'package:vocas_jp/viewModel/base_state.dart';
import 'package:vocas_jp/viewModel/login_page_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (LoginPage).toString();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BasePageState<String, LoginPageBloc, LoginPage> {

  @override
  Widget buildScreen(BuildContext context, Size windowSize) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Center(child: Text("login page"),),
          const Spacer(),

          Visibility(
            visible: Platform.isIOS,
            child: Paddings.basic(windowSize,
              Buttons.round(
                text: LoginType.apple.name.toUpperCase(),
                onPressed: () => bloc.clickLogin(LoginType.apple)
              ),
            ),
          ),
          Paddings.basic(windowSize,
            Buttons.round(
              text: LoginType.google.name.toUpperCase(),
              onPressed: () => bloc.clickLogin(LoginType.google)
            )
          ),
          const Spacer(),
        ],
      ),
    );
  }

  List<Widget> loginButtons() {
    return [

    ];
  }
}