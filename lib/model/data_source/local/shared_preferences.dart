import 'dart:convert';

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
        .then((pref) => pref.getString(keyOAuthToken))
        .then((jsonStringToken) => OAuthToken.fromJson(jsonDecode(jsonStringToken!)));
  }
}