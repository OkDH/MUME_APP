import 'package:mume/model/dto/mume/infinite_detail.dart';
import 'package:mume/model/repository/base_repository.dart';
import 'package:retrofit/retrofit.dart';

class StockRepository extends BaseRepository{
  
  // 계좌 내 종목 조회
  Future<HttpResponse<List<InfiniteDetail>>> getStocks(Map<String, dynamic> params){
    return BaseRepository.api.getStocks(params);
  }
}