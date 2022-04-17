import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mume/enums/login_type.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    String?  userId,
    String?  fcmToken,
    LoginType? loginPlatform,
    DateTime? createAt,
    DateTime? lastLoginAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}