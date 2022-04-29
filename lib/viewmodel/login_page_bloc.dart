import 'package:flutter/widgets.dart';
import 'package:mume/enums/login_type.dart';
import 'package:mume/model/dto/oauth_token.dart';
import 'package:mume/model/repository/login_repository.dart';
import 'package:mume/view/page/login_page.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:retrofit/retrofit.dart';

abstract class LoginBloc<T> extends BaseBloc<T>{
  final LoginRepository _loginRepository;

  LoginBloc(this._loginRepository);

  ///로그인이 필요한 페이지에서 로그인 전/후 화면 여부 반환
  Future<bool> isShowLoginView() {
    return _loginRepository.getOAuthToken()
        .then((token) => (token.accessToken ?? "").isNotEmpty);
  }

  /// 로그인 페이지로 이동 하는 버튼 클릭 시 호출
  clickLogin() {
    emit(NextPage(routeName: LoginPage.routeName));
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

class LoginPageBloc extends LoginBloc<Object>{
  final LoginRepository _loginRepository;

  LoginPageBloc(this._loginRepository) : super(_loginRepository);

  @override
  onDispose() {

  }

  @override
  onInitState() {

  }

  @override
  onPageResult(Object? args) {

  }

  @override
  onReceivedArgument(Object? arguments) {

  }

  ///네이버, 애플 등 소셜 로그인 버튼 클릭 시 호출
  void clickSocialLogin(LoginType type) {
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
}