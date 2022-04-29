// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'http_custom_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HttpCustomResponse _$HttpCustomResponseFromJson(Map<String, dynamic> json) {
  return _HttpCustomResponse.fromJson(json);
}

/// @nodoc
class _$HttpCustomResponseTearOff {
  const _$HttpCustomResponseTearOff();

  _HttpCustomResponse call({int? status, String? message}) {
    return _HttpCustomResponse(
      status: status,
      message: message,
    );
  }

  HttpCustomResponse fromJson(Map<String, Object?> json) {
    return HttpCustomResponse.fromJson(json);
  }
}

/// @nodoc
const $HttpCustomResponse = _$HttpCustomResponseTearOff();

/// @nodoc
mixin _$HttpCustomResponse {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpCustomResponseCopyWith<HttpCustomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpCustomResponseCopyWith<$Res> {
  factory $HttpCustomResponseCopyWith(
          HttpCustomResponse value, $Res Function(HttpCustomResponse) then) =
      _$HttpCustomResponseCopyWithImpl<$Res>;
  $Res call({int? status, String? message});
}

/// @nodoc
class _$HttpCustomResponseCopyWithImpl<$Res>
    implements $HttpCustomResponseCopyWith<$Res> {
  _$HttpCustomResponseCopyWithImpl(this._value, this._then);

  final HttpCustomResponse _value;
  // ignore: unused_field
  final $Res Function(HttpCustomResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HttpCustomResponseCopyWith<$Res>
    implements $HttpCustomResponseCopyWith<$Res> {
  factory _$HttpCustomResponseCopyWith(
          _HttpCustomResponse value, $Res Function(_HttpCustomResponse) then) =
      __$HttpCustomResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? status, String? message});
}

/// @nodoc
class __$HttpCustomResponseCopyWithImpl<$Res>
    extends _$HttpCustomResponseCopyWithImpl<$Res>
    implements _$HttpCustomResponseCopyWith<$Res> {
  __$HttpCustomResponseCopyWithImpl(
      _HttpCustomResponse _value, $Res Function(_HttpCustomResponse) _then)
      : super(_value, (v) => _then(v as _HttpCustomResponse));

  @override
  _HttpCustomResponse get _value => super._value as _HttpCustomResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_HttpCustomResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HttpCustomResponse implements _HttpCustomResponse {
  _$_HttpCustomResponse({this.status, this.message});

  factory _$_HttpCustomResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HttpCustomResponseFromJson(json);

  @override
  final int? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'HttpCustomResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HttpCustomResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$HttpCustomResponseCopyWith<_HttpCustomResponse> get copyWith =>
      __$HttpCustomResponseCopyWithImpl<_HttpCustomResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HttpCustomResponseToJson(this);
  }
}

abstract class _HttpCustomResponse implements HttpCustomResponse {
  factory _HttpCustomResponse({int? status, String? message}) =
      _$_HttpCustomResponse;

  factory _HttpCustomResponse.fromJson(Map<String, dynamic> json) =
      _$_HttpCustomResponse.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$HttpCustomResponseCopyWith<_HttpCustomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
