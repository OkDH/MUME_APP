import 'package:flutter/widgets.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/home_page_state.dart';

class HomePageBloc extends BaseBloc{
  late int currentPageIndex;

  @override
  onInitState() {
    currentPageIndex = 0;
  }

  @override
  onReceivedArgument(arguments) {

  }

  @override
  onPageResult(Object? args) {

  }

  @override
  onDispose() {

  }

  void swipePageChanged(int index) {
    currentPageIndex = index;
    emit(SwipeChangePage(currentPageIndex));
  }

  void clickBottomMenuItem(int index){
    currentPageIndex = index;
    emit(ChangePage(currentPageIndex));
  }
}