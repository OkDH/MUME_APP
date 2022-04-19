// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userId: json['userId'] as String?,
      fcmToken: json['fcmToken'] as String?,
      loginPlatform:
          $enumDecodeNullable(_$LoginTypeEnumMap, json['loginPlatform']),
      createAt: json['createAt'] == null
          ? null
          : DateTime.parse(json['createAt'] as String),
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userId': instance.userId,
      'fcmToken': instance.fcmToken,
      'loginPlatform': _$LoginTypeEnumMap[instance.loginPlatform],
      'createAt': instance.createAt?.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
    };

const _$LoginTypeEnumMap = {
  LoginType.apple: 'apple',
  LoginType.google: 'google',
  LoginType.naver: 'naver',
};
