import 'package:mume/enums/login_type.dart';
import 'package:mume/model/dto/response.dart';
import 'package:mume/model/dto/user.dart';
import 'package:mume/model/repository/base_response.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:google_sign_in/google_sign_in.dart';


class LoginRepository extends BaseRepository{
  Future<Response<User>> login(LoginType type){
    return Future.value(Response(resultData: User()));

    // return getPlatformCredential(type)
    //     .then((credential) => fireAuth.FirebaseAuth.instance.signInWithCredential(credential))
    //     .then((firebaseResult) => firebaseUserToAppUser(firebaseResult, type));
  }

  Future<Response<User>> autoLogin(LoginType type){
    return Future.value(Response(resultData: User()));

    // return getPlatformCredential(type)
    //     .then((credential) => fireAuth.FirebaseAuth.instance.signInWithCredential(credential))
    //     .then((firebaseResult) => firebaseUserToAppUser(firebaseResult, type));
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

  // Future<fireAuth.OAuthCredential> getPlatformCredential(LoginType type) {
  //   final provider = fireAuth.OAuthProvider(type.providerId);
  //
  //   if(type == LoginType.apple){
  //     return SignInWithApple.getAppleIDCredential(scopes: [AppleIDAuthorizationScopes.email,],)
  //         .then((appleResult) => provider.credential(idToken: appleResult.identityToken));
  //
  //   }else if(type == LoginType.google){
  //     return GoogleSignIn(scopes: ["email"]).signIn()
  //         .then((googleAccount) async => await googleAccount?.authentication)
  //         .then((googleAuth) => fireAuth.GoogleAuthProvider.credential(idToken: googleAuth?.idToken, accessToken: googleAuth?.accessToken));  //google은 OAuthProvider로 하면 안됨
  //
  //   }else{
  //     throw Exception("");
  //   }
  // }
}