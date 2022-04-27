import 'package:dio/dio.dart';
import 'package:mume/model/repository/base_repository.dart';
import 'package:retrofit/retrofit.dart';

class AccountRepository extends BaseRepository{
  Future<HttpResponse<List>> getMyAccountList(){
    return Future.value(HttpResponse(List.empty(), Response(data: List.empty(), requestOptions: RequestOptions(path: "path"))));
  }
}