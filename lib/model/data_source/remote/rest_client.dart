import 'package:dio/dio.dart';
import 'package:mume/model/dto/account.dart';
import 'package:mume/model/dto/stock_market_index.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  ///시장 지수
  @GET("/stocks/market-index")
  Future<HttpResponse<StockMarketIndex>> getStockMarketIndex();

  ///무매 종목의 시장 지수?
  @GET("/stocks/etfs")
  Future<HttpResponse<MumeStockMarketIndex>> getMumeStockMarketIndex();

  @POST("/public/member/fcm-token")
  Future<void> postTokens(@Body() Map<String, String> body);

  ///회원가입 또는 로그인, 토큰 발급
  @POST("/auth/check-social-m")
  Future<HttpResponse<void>> generateToken(@Body() String param);

  ///토큰 갱신
  @POST("/auth/refresh")
  Future<HttpResponse<void>> refreshToken(@Header("refresh_token") String token);

  ///내 계좌 데이터
  @GET("/infinite/my-account")
  Future<HttpResponse<List<Account>>> getMyAccounts();

  ///내 계좌 데이터
  @GET("/health-check")
  Future<HttpResponse<bool>> checkServerHealth();
}