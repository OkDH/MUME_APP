import 'package:vocas_jp/viewModel/base_bloc.dart';
import 'package:vocas_jp/viewModel/base_state.dart';
import 'package:vocas_jp/viewModel/home_page_state.dart';
import 'package:flutter/widgets.dart';
import 'package:vocas_jp/viewModel/base_bloc.dart';

class HomePageBloc extends BaseBloc{
  late int currentPageIndex;
  late PageController pageController;

  @override
  onInitState() {
    currentPageIndex = 0;
    pageController = PageController(initialPage: currentPageIndex, keepPage: true);
  }

  @override
  onDispose() {

  }

  @override
  onReceivedArgument(arguments) {

  }

  void onPageChanged(int pageIndex) {
    debugPrint("onPageChanged pageIndex == $pageIndex");
    currentPageIndex = pageIndex;
    pageController.animateToPage(currentPageIndex, duration: const Duration(milliseconds: 300), curve: Curves.ease);
    emit(Success(ChangePage(currentPageIndex)));
  }

  @override
  onFailPageResult(Exception? error) {

  }

  @override
  onPageResult(Object? args) {

  }
}