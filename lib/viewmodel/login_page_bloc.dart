import 'package:flutter/widgets.dart';
import 'package:mume/enums/login_type.dart';
import 'package:mume/model/dto/response.dart';
import 'package:mume/model/dto/user.dart';
import 'package:mume/model/repository/login_repository.dart';
import 'package:mume/viewmodel/base_bloc.dart';

class LoginPageBloc extends BaseBloc{
  final LoginRepository _loginRepository;

  LoginPageBloc(this._loginRepository);

  @override
  onInitState() {

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

  void clickLogin(LoginType type) {
    emit(Loading());
    _loginRepository.login(type)
        .then((response) => _successValidation(response))
        .then((user) => _saveSession(user))
        .then((user) => emit(BackPage()))
        .catchError((e) {
            debugPrint("clickLogin error == ${e.toString()}");
            emit(ShowAlert());
        });
  }

  User _successValidation(Response<User> rsp) {
    if(rsp.resultData == null) throw Exception("resultData is null");

    return rsp.resultData!;
  }

  User _saveSession(User user) {
    //TODO save user

    return user;
  }
}