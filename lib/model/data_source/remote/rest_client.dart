import 'package:dio/dio.dart';
import 'package:mume/config.dart';
import 'package:mume/model/dto/stock_market_index.dart';
import 'package:mume/model/dto/user.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: Config.apiUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  ///시장 지수
  @GET("/stocks/market-index")
  Future<HttpResponse<StockMarketIndex>> getStockMarketIndex();

  ///무매 종목의 시장 지수?
  @GET("/stocks/etfs")
  Future<HttpResponse<MumeStockMarketIndex>> getMumeStockMarketIndex();

  @POST("/public/member/fcm-token")
  Future<void> postTokens(@Body() Map<String, String> body);

  @POST("/auth/check-social-m")
  Future<HttpResponse<void>> socialLogin(@Body() String param);
}