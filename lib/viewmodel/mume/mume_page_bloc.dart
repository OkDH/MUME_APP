import 'package:flutter/foundation.dart';
import 'package:mume/model/repository/account_repository.dart';
import 'package:mume/model/repository/login_repository.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/login_page_bloc.dart';

class MumePageBloc extends LoginBloc<Object>{
  final AccountRepository _accountRepository;

  // etf 리스트
  List etfList = List.empty(growable: true);

  // 내 계좌 리스트
  List accountList = List.empty(growable: true);

  MumePageBloc(
    this._accountRepository,
    LoginRepository loginRepository,
  ) : super(loginRepository);

  @override
  onInitState() {
    getMyAccountList();
  }

  @override
  onReceivedArgument(arguments) {

  }

  @override
  onPageResult(Object? args) {
    if(args is ChangeLoginState) emit(args);
  }

  @override
  onDispose() {

  }

  void getMyAccountList() {
    _accountRepository.getMyAccountList()
        .then((value) => accountList = value.data)
        .then((_) => emit(ReBuildPage()))
        .catchError((e){
          debugPrint("getMyAccountList error == $e");
    });
  }
}