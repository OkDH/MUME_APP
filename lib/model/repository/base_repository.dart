import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mume/config.dart';
import 'package:mume/enums/http_custom_error_type.dart';
import 'package:mume/model/data_source/local/shared_preferences.dart';
import 'package:mume/model/data_source/remote/rest_client.dart';
import 'package:mume/model/dto/http_custom_response.dart';
import 'package:mume/model/dto/oauth_token.dart';

class BaseRepository{
  static late RestClient api;
  SharedPref sharedPref = SharedPref();

  BaseRepository(){
    api = _makeRestClient();
  }

  Future<void> updateRestClientHeader(){
    return sharedPref.getOAuthToken()
        .then((token) => _makeRestClient(token: token))
        .then((restClient) => api = restClient);
  }

  RestClient _makeRestClient({OAuthToken? token}){
    var dio = _initHeaders(Dio(), token);
    dio = _initInterceptors(dio);
    return RestClient(dio, baseUrl: Config.apiUrl);
  }

  Dio _initHeaders(Dio dio, OAuthToken? token) {
    dio.options.headers["Content-Type"] = "application/json; charset=UTF-8";
    dio.options.responseType = ResponseType.plain;

    if(token != null && (token.accessToken ?? "").isNotEmpty){
      dio.options.headers["ACCESS_TOKEN"] = token.accessToken;
    }

    return dio;
  }

  Dio _initInterceptors(Dio dio) {
    final customError = _serverCustomErrorInterceptor();
    dio.interceptors.add(customError);

    return dio;
  }

  InterceptorsWrapper _serverCustomErrorInterceptor() {
    return InterceptorsWrapper(onResponse: (rsp, handler) {
      try{
        final body = Map<String, dynamic>.from(jsonDecode(rsp.data));
        final customRsp = HttpCustomResponse.fromJson(body);

        if(customRsp.status! == HttpCustomErrorType.invalidToken.statusCode){
          _requestRefreshFlow(rsp, handler);

        }else if(false){


        }else throw Exception("ignore");  //catch 실행
      }catch(ignore){
        handler.next(rsp);
      }
    });
  }

  OAuthToken httpHeaderToOAuthToken(Headers headers){
    final access = headers["ACCESS_TOKEN"]?.first;
    final refresh = headers["REFRESH_TOKEN"]?.first;
    return OAuthToken(accessToken: access, refreshToken: refresh);
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return Dio().request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }

  void _requestRefreshFlow(Response rsp, ResponseInterceptorHandler handler) {
    debugPrint("call _requestRefreshFlow");
    sharedPref.getOAuthToken()
        .then((legacyToken) => api.refreshToken(legacyToken.refreshToken ?? ""))
        .then((result) => httpHeaderToOAuthToken(result.response.headers))
        .then((newToken) => sharedPref.setOAuthToken(newToken))
        .then((_) => updateRestClientHeader())
        .then((_) => _retry(rsp.requestOptions))
        .then((retryRsp) => handler.next(retryRsp))
        .catchError((e) => handler.reject(DioError(requestOptions: rsp.requestOptions, error: e)));
  }
}