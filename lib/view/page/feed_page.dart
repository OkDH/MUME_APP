import 'package:flutter/material.dart';
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

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(FeedPage.routeName)
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