import 'package:mume/model/dto/market_index.dart';
import 'package:mume/model/repository/base_repository.dart';
import 'package:retrofit/retrofit.dart';

class MarketIndexRepository extends BaseRepository{
  Future<HttpResponse<MarketIndex>> getMarketIndex(){
    return BaseRepository.api.getMarketIndex();
  }

  Future<HttpResponse<MumeStockMarketIndex>> getMumeStockMarketIndex(){
    return BaseRepository.api.getMumeStockMarketIndex();
  }

}