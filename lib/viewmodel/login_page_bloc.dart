import 'package:flutter/widgets.dart';
import 'package:mume/enums/login_type.dart';
import 'package:mume/model/dto/oauth_token.dart';
import 'package:mume/model/dto/user.dart';
import 'package:mume/model/repository/login_repository.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:retrofit/retrofit.dart';

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

  @override
  Future<bool> showLoginView() {
    return Future.value(false);
  }

  void clickLogin(LoginType type) {
    emit(Loading());
    _loginRepository.signUpOrSignIn(type)
        .then((response) => _successValidation(response))
        .then((token) => _saveSession(token))
        .then((_) => _loginRepository.updateRestClientHeader())
        .then((_) => emit(BackPage(args: SuccessSignIn())))
        .catchError((e) {
            debugPrint("clickLogin error == ${e.toString()}");
            emit(ShowAlert());
        });
  }

  OAuthToken _successValidation(HttpResponse<OAuthToken> rsp) {
    if((rsp.data.accessToken ?? "").isEmpty
        || (rsp.data.refreshToken ?? "").isEmpty) throw Exception("resultData is null");

    return rsp.data;
  }

  Future<void> _saveSession(OAuthToken oAuthToken) async {
    bool isSuccess = await _loginRepository.saveOAuthToken(oAuthToken);
    debugPrint("_saveSession isSuccess == $isSuccess");

    if(!isSuccess){
      throw Exception("_saveSession fail");
    }

    return;
  }

}