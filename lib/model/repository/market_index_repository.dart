import 'package:mume/model/dto/stock_market_index.dart';
import 'package:mume/model/repository/base_repository.dart';
import 'package:retrofit/retrofit.dart';

class MarketIndexRepository extends BaseRepository{
  Future<HttpResponse<StockMarketIndex>> getStockMarketIndex(){
    return api.getStockMarketIndex();
  }

  Future<HttpResponse<MumeStockMarketIndex>> getMumeStockMarketIndex(){
    return api.getMumeStockMarketIndex();
  }
}