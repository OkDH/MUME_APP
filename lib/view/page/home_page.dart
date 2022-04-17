import 'package:flutter/material.dart';
import 'package:mume/enums/bottom_menu_item_type.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/home_page_bloc.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/home_page_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (HomePage).toString();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<String, HomePageBloc, HomePage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: bloc.currentPageIndex, keepPage: true);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);

    if(state is ChangePage){
      _pageController.jumpToPage(state.index);
    }else if(state is SwipeChangePage){
      // FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  ///current is! ChangePage 조건 없을 경우
  ///[ChangePage] 상태 방출 시 [SwipeChangePage]가 뒤이어 실행되기 때문에
  ///[buildPage] 중복 실행 됨.
  @override
  bool onChangeStateBuildWhen(BaseState pre, BaseState current, Size windowSize) {
    return current is! ChangePage;
  }

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (pageIndex) => bloc.swipePageChanged(pageIndex),
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