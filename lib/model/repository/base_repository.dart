import 'package:dio/dio.dart';
import 'package:mume/model/data_source/local/shared_preferences.dart';
import 'package:mume/model/data_source/remote/rest_client.dart';
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
    final dio = Dio();
    dio.options.headers["Content-Type"] = "application/json; charset=UTF-8";
    dio.options.responseType = ResponseType.plain;

    if(token != null && (token.accessToken ?? "").isNotEmpty){
      dio.options.headers["ACCESS_TOKEN"] = token.accessToken;
    }

    return RestClient(dio);
  }
}