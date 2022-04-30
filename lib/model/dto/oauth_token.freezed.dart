// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'oauth_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OAuthToken _$OAuthTokenFromJson(Map<String, dynamic> json) {
  return _OAuthToken.fromJson(json);
}

/// @nodoc
class _$OAuthTokenTearOff {
  const _$OAuthTokenTearOff();

  _OAuthToken call({String? accessToken, String? refreshToken}) {
    return _OAuthToken(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }

  OAuthToken fromJson(Map<String, Object?> json) {
    return OAuthToken.fromJson(json);
  }
}

/// @nodoc
const $OAuthToken = _$OAuthTokenTearOff();

/// @nodoc
mixin _$OAuthToken {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OAuthTokenCopyWith<OAuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthTokenCopyWith<$Res> {
  factory $OAuthTokenCopyWith(
          OAuthToken value, $Res Function(OAuthToken) then) =
      _$OAuthTokenCopyWithImpl<$Res>;
  $Res call({String? accessToken, String? refreshToken});
}

/// @nodoc
class _$OAuthTokenCopyWithImpl<$Res> implements $OAuthTokenCopyWith<$Res> {
  _$OAuthTokenCopyWithImpl(this._value, this._then);

  final OAuthToken _value;
  // ignore: unused_field
  final $Res Function(OAuthToken) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OAuthTokenCopyWith<$Res> implements $OAuthTokenCopyWith<$Res> {
  factory _$OAuthTokenCopyWith(
          _OAuthToken value, $Res Function(_OAuthToken) then) =
      __$OAuthTokenCopyWithImpl<$Res>;
  @override
  $Res call({String? accessToken, String? refreshToken});
}

/// @nodoc
class __$OAuthTokenCopyWithImpl<$Res> extends _$OAuthTokenCopyWithImpl<$Res>
    implements _$OAuthTokenCopyWith<$Res> {
  __$OAuthTokenCopyWithImpl(
      _OAuthToken _value, $Res Function(_OAuthToken) _then)
      : super(_value, (v) => _then(v as _OAuthToken));

  @override
  _OAuthToken get _value => super._value as _OAuthToken;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_OAuthToken(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OAuthToken with DiagnosticableTreeMixin implements _OAuthToken {
  _$_OAuthToken({this.accessToken, this.refreshToken});

  factory _$_OAuthToken.fromJson(Map<String, dynamic> json) =>
      _$$_OAuthTokenFromJson(json);

  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OAuthToken(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OAuthToken'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OAuthToken &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(refreshToken));

  @JsonKey(ignore: true)
  @override
  _$OAuthTokenCopyWith<_OAuthToken> get copyWith =>
      __$OAuthTokenCopyWithImpl<_OAuthToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OAuthTokenToJson(this);
  }
}

abstract class _OAuthToken implements OAuthToken {
  factory _OAuthToken({String? accessToken, String? refreshToken}) =
      _$_OAuthToken;

  factory _OAuthToken.fromJson(Map<String, dynamic> json) =
      _$_OAuthToken.fromJson;

  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$OAuthTokenCopyWith<_OAuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}
