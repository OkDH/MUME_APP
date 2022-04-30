import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mume/view/resource/strings.dart';

enum LoginStateType{
  login,
  logout,
}

extension ExLoginStateType on LoginStateType {
  String get test {
    switch (this) {
      case LoginStateType.login: return "";
      case LoginStateType.logout: return "";
      default: return "";
    }
  }
}