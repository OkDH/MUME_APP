import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mume/config.dart';
import 'package:mume/model/dto/response.dart' as r;
import 'package:mume/model/dto/user.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: kReleaseMode ? Config.webViewUrl : Config.testUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("/api/public/member/fcm-token")
  Future<void> postTokens(@Body() Map<String, String> body);

  @POST("/api/public/member/fcm-token") //todo 경로 수정
  Future<r.Response<User>> socialLogin(
      @Header("social_id") String userId,
      @Header("social_type") String token,);
}