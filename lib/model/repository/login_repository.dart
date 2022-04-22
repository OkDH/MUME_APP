import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:mume/enums/login_type.dart';
import 'package:mume/model/dto/user.dart';
import 'package:mume/model/repository/base_repository.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:tuple/tuple.dart';

class LoginRepository extends BaseRepository{
  Future<HttpResponse<User>> login(LoginType type){
    return _getPlatformId(type).then((loginTypeAndToken) {
      debugPrint("login _getPlatformId result == $loginTypeAndToken");
      return _requestLoginToServer(loginTypeAndToken);
    });
  }

  Future<HttpResponse<User>> autoLogin(LoginType type){
    return Future.value(HttpResponse(User(), Response(requestOptions: RequestOptions(path: ''))));
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
      throw Exception("LoginType에 없는 놈이 들어왔어");
    }
  }

  Future<HttpResponse<User>> _requestLoginToServer(Tuple2<LoginType, String> loginTypeAndToken) {
    debugPrint("_requestLoginToServer call == $loginTypeAndToken");
    return api.socialLogin(loginTypeAndToken.item2, loginTypeAndToken.item1.name.toUpperCase());


    // return Future.delayed(const Duration(seconds: 2), (){
    //   return HttpResponse(resultData: User());
    // });
  }

// HttpResponse<User> firebaseUserToAppUser(
//   fireAuth.UserCredential credential,
//   LoginType loginType
// ) {
//   return HttpResponse(resultData: User(
//     userId: credential.user?.uid,
//     loginPlatform: loginType,
//     createAt: credential.user?.metadata.creationTime,
//     lastLoginAt: credential.user?.metadata.lastSignInTime
//   ));
// }
}