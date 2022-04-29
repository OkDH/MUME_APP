import 'package:flutter/foundation.dart';
import 'package:mume/model/repository/account_repository.dart';
import 'package:mume/view/page/login_page.dart';
import 'package:mume/viewmodel/base_bloc.dart';

class MumePageBloc extends BaseBloc<Object>{
  final AccountRepository _accountRepository;

  MumePageBloc(this._accountRepository);

  @override
  onInitState() {

  }

  @override
  onReceivedArgument(arguments) {

  }

  @override
  onPageResult(Object? args) {
    debugPrint("onPageResult arge ($args)");
    if(args is SuccessSignIn) emit(args);
  }

  @override
  onDispose() {

  }

  @override
  Future<bool> showLoginView() {
    return _accountRepository.sharedPref.getOAuthToken()
        .then((token) => (token.accessToken ?? "").isNotEmpty);
  }
}