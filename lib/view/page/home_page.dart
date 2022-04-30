import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mume/enums/bottom_menu_item_type.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/home_page_bloc.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/more_page_bloc.dart';
import 'package:mume/viewmodel/mume_page_bloc.dart';
import 'package:mume/viewmodel/vr_page_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (HomePage).toString();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<String, HomePageBloc, HomePage> {

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);

    if(state is ChangeLoginState){
      context.read<MumePageBloc>().rebuildPage();
      context.read<VrPageBloc>().rebuildPage();
      context.read<MorePageBloc>().rebuildPage();
    }
  }

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: IndexedStack(
          index: bloc.currentPageIndex,
          children: BottomMenuItemType.values
              .map((e) => e.page)
              .toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: MyColor.background,
          selectedItemColor: MyColor.primary,
          unselectedItemColor: MyColor.disableDark,
          unselectedLabelStyle: const TextStyle(color: MyColor.disableDark),
          onTap: (iconIndex) => bloc.clickBottomMenuItem(iconIndex),
          currentIndex: bloc.currentPageIndex,
          items: BottomMenuItemType.values
              .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.label))
              .toList(),
        ),
      ),
    );
  }
}