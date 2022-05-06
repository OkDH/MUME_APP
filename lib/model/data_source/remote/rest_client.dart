import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:mume/model/dto/market_index.dart';
import 'package:mume/model/dto/mume/account.dart';
import 'package:mume/model/dto/mume/state_map.dart';
import 'package:mume/model/dto/mume/infinite_detail.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  ///시장 지수
  @GET("/stocks/market-index")
  Future<HttpResponse<MarketIndex>> getMarketIndex();

  ///무매 종목
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

  ///서버 상태 체크
  @GET("/health-check")
  Future<HttpResponse<bool>> checkServerHealth();

  // mume 관련 -------

  ///내 계좌 데이터
  @GET("/infinite/my-account")
  Future<HttpResponse<List<Account>>> getMyAccounts();

  ///계좌 내 종목들 현황 조회
  @POST("/infinite/account/state")
  Future<HttpResponse<StateMap>> getMyAccountState(@Body() Map<String, dynamic> params);

  ///계좌 내 종목 조회
  @POST("/infinite/stocks")
  Future<HttpResponse<List<InfiniteDetail>>> getStocks(@Body() Map<String, dynamic> params);

  // ----------------

}