import 'package:flutter/foundation.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:mume/enums/login_type.dart';
import 'package:mume/model/dto/response.dart';
import 'package:mume/model/dto/user.dart';
import 'package:mume/model/repository/base_repository.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tuple/tuple.dart';



class LoginRepository extends BaseRepository{
  Future<Response<User>> login(LoginType type){
    return _getPlatformId(type).then((loginTypeAndToken) => _requestLoginToServer(loginTypeAndToken));
  }

  Future<Response<User>> autoLogin(LoginType type){
    return Future.value(Response(resultData: User()));
  }

  Future<Tuple2<LoginType, String>> _getPlatformId(LoginType type) {
    if(type == LoginType.apple){
      return SignInWithApple.getAppleIDCredential(scopes: [AppleIDAuthorizationScopes.email,],)
          .then((appleResult) => Tuple2(type, appleResult.identityToken!));

    }else if(type == LoginType.google){
      return GoogleSignIn(scopes: ["email"]).signIn()
          .then((googleAccount) async => await googleAccount?.authentication)
          .then((googleAuth) => Tuple2(type, googleAuth!.idToken!));

    }else if(type == LoginType.naver){
      return FlutterNaverLogin.logIn()
          .then((result) => Tuple2(type, result.accessToken.accessToken));

    }else{
      throw Exception("LoginType에 없는 놈이 들어왔어");
    }
  }

  Future<Response<User>> _requestLoginToServer(Tuple2<LoginType, String> loginTypeAndToken) {
    debugPrint("_requestLoginToServer call == $loginTypeAndToken");
    return api.socialLogin(loginTypeAndToken.item2, loginTypeAndToken.item1.name.toUpperCase());


    // return Future.delayed(const Duration(seconds: 2), (){
    //   return Response(resultData: User());
    // });
  }

// Response<User> firebaseUserToAppUser(
//   fireAuth.UserCredential credential,
//   LoginType loginType
// ) {
//   return Response(resultData: User(
//     userId: credential.user?.uid,
//     loginPlatform: loginType,
//     createAt: credential.user?.metadata.creationTime,
//     lastLoginAt: credential.user?.metadata.lastSignInTime
//   ));
// }
}