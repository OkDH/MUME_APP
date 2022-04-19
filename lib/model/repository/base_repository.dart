import 'package:dio/dio.dart';
import 'package:mume/model/data_source/remote/api_client.dart';

class BaseRepository{
  late RestClient api;

  BaseRepository(){
    final dio = Dio();
    dio.options.headers["Content-Type"] = "application/json; charset=UTF-8";
    api = RestClient(dio);
  }
}