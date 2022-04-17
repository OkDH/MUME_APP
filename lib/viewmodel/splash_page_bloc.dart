import 'package:vocas_jp/view/page/home/home_page.dart';
import 'package:vocas_jp/view/page/login/login_page.dart';
import 'package:vocas_jp/viewModel/base_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:vocas_jp/viewModel/base_state.dart';

class SplashPageBloc extends BaseBloc<Object>{

  @override
  onInitState() {
    Future.delayed(const Duration(milliseconds: 1500), (){
      emit(GoNextPage(routeName: HomePage.routeName, navigateType: NavigateType.popAndPush));
    });
  }

  @override
  onDispose() {

  }

  @override
  onReceivedArgument(arguments) {

  }

  @override
  onFailPageResult(Exception? error) {

  }

  @override
  onPageResult(Object? args) {

  }
}