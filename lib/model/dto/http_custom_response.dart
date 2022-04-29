import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mume/enums/login_type.dart';

part 'http_custom_response.freezed.dart';
part 'http_custom_response.g.dart';

@freezed
class HttpCustomResponse with _$HttpCustomResponse {
  factory HttpCustomResponse({
    int?  status,
    String?  message,
  }) = _HttpCustomResponse;

  factory HttpCustomResponse.fromJson(Map<String, dynamic> json) => _$HttpCustomResponseFromJson(json);
}