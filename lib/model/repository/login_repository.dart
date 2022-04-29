import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:mume/enums/login_type.dart';
import 'package:mume/model/dto/oauth_token.dart';
import 'package:mume/model/repository/base_repository.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:tuple/tuple.dart';

class LoginRepository extends BaseRepository{
  Future<HttpResponse<OAuthToken>> signUpOrSignIn(LoginType type){
    return _getPlatformId(type).then((loginTypeAndToken) {
      return _requestLoginToServer(loginTypeAndToken);
    });
  }

  Future<HttpResponse<OAuthToken>> autoLogin(LoginType type){
    return Future.value(HttpResponse(OAuthToken(), Response(requestOptions: RequestOptions(path: ''))));
  }

  Future<bool> saveOAuthToken(OAuthToken token) {
    return sharedPref.setOAuthToken(token);
  }

  Future<OAuthToken> getOAuthToken() {
    return sharedPref.getOAuthToken();
  }

  Future<Tuple2<LoginType, String>> _getPlatformId(LoginType type) {
    if(type == LoginType.apple){
      return SignInWithApple.getAppleIDCredential(scopes: [AppleIDAuthorizationScopes.email,],).then((appleResult) {
          debugPrint("LoginType.apple result == $appleResult");
          return Tuple2(type, appleResult.userIdentifier!);
      });

    }else if(type == LoginType.naver){
      return FlutterNaverLogin.logIn().then((result) {
          debugPrint("LoginType.naver result == $result");
          return Tuple2(type, result.account.id);
      });

    }
    // else if(type == LoginType.google){
    //   return GoogleSignIn(scopes: ["email"]).signIn()
    //       .then((googleAccount) async => await googleAccount?.authentication)
    //       .then((googleAuth) => Tuple2(type, googleAuth!.idToken!));
    //
    // }
    else{
      throw Exception("LoginType 에 없는 놈이 들어왔어");
    }
  }

  Future<HttpResponse<OAuthToken>> _requestLoginToServer(Tuple2<LoginType, String> loginTypeAndToken) async {
    var result = await BaseRepository.api.socialLogin('{"socialType": "${loginTypeAndToken.item1.name.toUpperCase()}", "socialId": "idtest"}');
    var access = result.response.headers["ACCESS_TOKEN"]?.first;
    var refresh = result.response.headers["REFRESH_TOKEN"]?.first;
    debugPrint("_requestLoginToServer result == access($access), refresh($refresh), result.response.headers(${result.response.headers}), result(${result.toString()})");
    return HttpResponse(OAuthToken(accessToken: access, refreshToken: refresh), result.response);
  }
}