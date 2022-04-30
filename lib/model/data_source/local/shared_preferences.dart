import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:mume/model/dto/oauth_token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String keyOAuthToken = "oAuthToken";

  Future<bool> setOAuthToken(OAuthToken token) {
    return SharedPreferences.getInstance()
        .then((pref) => pref.setString(keyOAuthToken, jsonEncode(token)));
  }

  Future<OAuthToken> getOAuthToken() {
    return SharedPreferences.getInstance()
        .then((pref) => pref.getString(keyOAuthToken) ?? '{"accessToken": "", "refreshToken":""}')
        .then((jsonStringToken) => OAuthToken.fromJson(jsonDecode(jsonStringToken)));
  }

  Future<bool> clear(){
    return SharedPreferences.getInstance()
        .then((pref) => pref.clear());
  }
}