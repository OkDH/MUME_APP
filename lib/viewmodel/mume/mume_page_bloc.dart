import 'package:flutter/foundation.dart';
import 'package:mume/model/repository/account_repository.dart';
import 'package:mume/model/repository/login_repository.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/login_page_bloc.dart';

class MumePageBloc extends LoginBloc<Object> {
  MumePageBloc(
    LoginRepository loginRepository,
  ) : super(loginRepository);

  @override
  onInitState() {}

  @override
  onReceivedArgument(arguments) {}

  @override
  onPageResult(Object? args) {
    if (args is ChangeLoginState) emit(args);
  }

  @override
  onDispose() {}
}
