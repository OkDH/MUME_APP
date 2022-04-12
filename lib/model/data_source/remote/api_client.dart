import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mume/config.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: kReleaseMode ? Config.webViewUrl : Config.testUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("/api/public/member/fcm-token")
  Future<void> postTokens(@Body() Map<String, String> body);
}