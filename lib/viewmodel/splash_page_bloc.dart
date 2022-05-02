import 'package:flutter/services.dart';
import 'package:mume/enums/navigate_type.dart';
import 'package:mume/model/repository/splash_repository.dart';
import 'package:mume/view/page/home_page.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';

class SplashPageBloc extends BaseBloc<Object>{
  final SplashRepository _splashRepository;

  SplashPageBloc(this._splashRepository);

  @override
  onInitState() {
    Future.delayed(const Duration(milliseconds: 500))
        .then((value) => _splashRepository.checkServerHealth())
        .then((serverHealth) => serverHealth.data ? goHome() : throw Exception("require check server"))
        .catchError((e) => emit(ShowAlert(
            title: Strings.checkServer,
            content: Strings.msgCheckServer,
            dismissible: false,
            useBtnPositiveOnly: true,
            btnPositiveText: Strings.close,
            btnPositiveEvent: () => SystemNavigator.pop(animated: true)
        )));
  }

  @override
  onDispose() {

  }

  @override
  onReceivedArgument(arguments) {

  }

  @override
  onPageResult(Object? args) {

  }

  goHome() {
    emit(NextPage(routeName: HomePage.routeName, navigateType: NavigateType.popAndPush));
  }
}