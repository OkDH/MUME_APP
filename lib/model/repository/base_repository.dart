import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mume/config.dart';
import 'package:mume/enums/http_custom_error_type.dart';
import 'package:mume/enums/login_state.dart';
import 'package:mume/model/data_source/local/shared_preferences.dart';
import 'package:mume/model/data_source/remote/rest_client.dart';
import 'package:mume/model/dto/oauth_token.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:retrofit/dio.dart';
import 'package:rxdart/subjects.dart';

class BaseRepository{
  static late RestClient api;
  SharedPref sharedPref = SharedPref();
  static PublishSubject httpStateEmitter = PublishSubject<BaseState>();

  BaseRepository(){
    updateRestClientHeader();
  }

  Future<void> updateRestClientHeader(){
    return sharedPref.getOAuthToken()
        .then((token) => _makeRestClient(token: token))
        .then((restClient) => api = restClient);
  }

  RestClient _makeRestClient({OAuthToken? token}){
    debugPrint("_makeRestClient token($token)");
    var dio = _initHeaders(Dio(), token);
    dio = _initInterceptors(dio);
    return RestClient(dio, baseUrl: Config.apiUrl);
  }

  Dio _initHeaders(Dio dio, OAuthToken? token) {
    dio.options.headers["Content-Type"] = "application/json; charset=UTF-8";
    // dio.options.responseType = ResponseType.plain;

    if(token != null && (token.accessToken ?? "").isNotEmpty){
      dio.options.headers["ACCESS_TOKEN"] = token.accessToken;
    }else{
      debugPrint("_initHeaders nulllllllllll");
    }

    return dio;
  }

  Dio _initInterceptors(Dio dio) {
    final customError = _serverCustomErrorInterceptor();
    dio.interceptors.add(customError);

    return dio;
  }

  InterceptorsWrapper _serverCustomErrorInterceptor() {
    return InterceptorsWrapper(onError: (dioError, handler) {
      try{
        if(dioError.response?.statusCode == HttpCustomErrorType.accessToken.statusCode){
          _requestRefreshFlow(dioError, handler);

        }else if(dioError.response?.statusCode == HttpCustomErrorType.refreshToken.statusCode){
          sharedPref.clear()
            .then((value) => httpStateEmitter.add(RequiredLogin()))
            .catchError((e) => debugPrint(""));

        }else throw Exception("ignore");  //catch 실행
      }catch(ignore){
        handler.next(dioError);
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

  void _requestRefreshFlow(DioError dioError, ErrorInterceptorHandler handler) {
    debugPrint("call _requestRefreshFlow");
    sharedPref.getOAuthToken()
        .then((legacyToken) => api.refreshToken(legacyToken.refreshToken ?? ""))
        .then((result) => httpHeaderToOAuthToken(result.response.headers))
        .then((newToken) => sharedPref.setOAuthToken(newToken))
        .then((_) => updateRestClientHeader())
        .then((_) => _retry(dioError.requestOptions))
        .then((retryRsp) => handler.resolve(retryRsp))
        .catchError((e) => handler.reject(DioError(requestOptions: dioError.requestOptions, error: e)));
  }

  Future<HttpResponse<bool>> checkServerHealth(){
    return api.checkServerHealth();
  }
}