// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {String? userId,
      String? fcmToken,
      LoginType? loginPlatform,
      DateTime? createAt,
      DateTime? lastLoginAt}) {
    return _User(
      userId: userId,
      fcmToken: fcmToken,
      loginPlatform: loginPlatform,
      createAt: createAt,
      lastLoginAt: lastLoginAt,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String? get userId => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;
  LoginType? get loginPlatform => throw _privateConstructorUsedError;
  DateTime? get createAt => throw _privateConstructorUsedError;
  DateTime? get lastLoginAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String? userId,
      String? fcmToken,
      LoginType? loginPlatform,
      DateTime? createAt,
      DateTime? lastLoginAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? fcmToken = freezed,
    Object? loginPlatform = freezed,
    Object? createAt = freezed,
    Object? lastLoginAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: fcmToken == freezed
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      loginPlatform: loginPlatform == freezed
          ? _value.loginPlatform
          : loginPlatform // ignore: cast_nullable_to_non_nullable
              as LoginType?,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastLoginAt: lastLoginAt == freezed
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userId,
      String? fcmToken,
      LoginType? loginPlatform,
      DateTime? createAt,
      DateTime? lastLoginAt});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? userId = freezed,
    Object? fcmToken = freezed,
    Object? loginPlatform = freezed,
    Object? createAt = freezed,
    Object? lastLoginAt = freezed,
  }) {
    return _then(_User(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: fcmToken == freezed
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      loginPlatform: loginPlatform == freezed
          ? _value.loginPlatform
          : loginPlatform // ignore: cast_nullable_to_non_nullable
              as LoginType?,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastLoginAt: lastLoginAt == freezed
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {this.userId,
      this.fcmToken,
      this.loginPlatform,
      this.createAt,
      this.lastLoginAt});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? userId;
  @override
  final String? fcmToken;
  @override
  final LoginType? loginPlatform;
  @override
  final DateTime? createAt;
  @override
  final DateTime? lastLoginAt;

  @override
  String toString() {
    return 'User(userId: $userId, fcmToken: $fcmToken, loginPlatform: $loginPlatform, createAt: $createAt, lastLoginAt: $lastLoginAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.fcmToken, fcmToken) &&
            const DeepCollectionEquality()
                .equals(other.loginPlatform, loginPlatform) &&
            const DeepCollectionEquality().equals(other.createAt, createAt) &&
            const DeepCollectionEquality()
                .equals(other.lastLoginAt, lastLoginAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(fcmToken),
      const DeepCollectionEquality().hash(loginPlatform),
      const DeepCollectionEquality().hash(createAt),
      const DeepCollectionEquality().hash(lastLoginAt));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      {String? userId,
      String? fcmToken,
      LoginType? loginPlatform,
      DateTime? createAt,
      DateTime? lastLoginAt}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get userId;
  @override
  String? get fcmToken;
  @override
  LoginType? get loginPlatform;
  @override
  DateTime? get createAt;
  @override
  DateTime? get lastLoginAt;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
