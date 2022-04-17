import 'package:vocas_jp/model/dto/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class Response<T>{
  @_Converter()
  final T? resultData;
  final int? resultCode;
  final String? resultMessage;

  Response({
    this.resultData,
    this.resultCode,
    this.resultMessage,
  });

  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson<T>(json);

  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}

class _DateTimeEpochConverter implements JsonConverter<DateTime, int> {
  const _DateTimeEpochConverter();

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(json);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;
}

class _Converter<T> implements JsonConverter<T, Object?> {
  const _Converter();

  @override
  T fromJson(Object? json) {
    if (json is Map<String, dynamic> &&
        json.containsKey('userId') &&
        json.containsKey('fcmToken') &&
        json.containsKey('loginPlatform') &&
        json.containsKey('createAt') &&
        json.containsKey('lastLoginAt')) {
      return User.fromJson(json) as T;
    }
    // This will only work if `json` is a native JSON type:
    //   num, String, bool, null, etc
    // *and* is assignable to `T`.
    return json as T;
  }

  // This will only work if `object` is a native JSON type:
  //   num, String, bool, null, etc
  // Or if it has a `toJson()` function`.
  @override
  Object? toJson(T object) => object;
}