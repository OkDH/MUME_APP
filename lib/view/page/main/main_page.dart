import 'package:flutter/material.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/assets.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/main/main_page_bloc.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/sizes.dart';
import 'package:mume/helper/print_format_helper.dart';
import 'package:mume/helper/text_style_helper.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (MainPage).toString();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends BasePageState<String, MainPageBloc, MainPage> {

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(Sizes.paddingBody),
              decoration: const BoxDecoration(
                color: MyColor.primary,
              ),
              child: Column(
                children: [
                  Container(
                    child: const Text("MUME", style: TextStyle(fontSize: Sizes.textLarge, color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: Sizes.paddingDefault),
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);
  }
}