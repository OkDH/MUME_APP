// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Response<T> _$ResponseFromJson<T>(Map<String, dynamic> json) => Response<T>(
      resultData: _Converter<T?>().fromJson(json['resultData']),
      resultCode: json['resultCode'] as int?,
      resultMessage: json['resultMessage'] as String?,
    );

Map<String, dynamic> _$ResponseToJson<T>(Response<T> instance) =>
    <String, dynamic>{
      'resultData': _Converter<T?>().toJson(instance.resultData),
      'resultCode': instance.resultCode,
      'resultMessage': instance.resultMessage,
    };
