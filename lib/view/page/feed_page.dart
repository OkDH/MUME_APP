import 'package:flutter/material.dart';
import 'package:mume/model/data_source/local/shared_preferences.dart';
import 'package:mume/model/dto/oauth_token.dart';
import 'package:mume/view/componont/button.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/assets.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/feed_page_bloc.dart';
import 'package:mume/viewmodel/main_page_bloc.dart';
import 'package:mume/viewmodel/splash_page_bloc.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (FeedPage).toString();

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends BasePageState<String, FeedPageBloc, FeedPage> {
  final s = SharedPref();

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(FeedPage.routeName),

            MyButton(
                text: "text",
                onPressed: (){
                  s.setOAuthToken(OAuthToken(accessToken: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2NTEyNDA2NzEsIm1lbWJlcklkIjo5NzB9.n8gmL6bGpbc-4aCeaR53sR99qEJH-eXzcf3UjmmIuAI", refreshToken: "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2NTEyNDEyMTMsIm1lbWJlcklkIjo5NzB9.IYJAdo50pnvXMMEhXN0k66kM3dK9RuLAOaJ-3W43j9o"));
                }
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