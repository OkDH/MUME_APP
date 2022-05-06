import 'package:mume/model/dto/mume/account.dart';
import 'package:mume/model/repository/base_repository.dart';
import 'package:retrofit/retrofit.dart';

class AccountRepository extends BaseRepository{
  
  // 계좌 내 종목 조회
  Future<HttpResponse<List<Account>>> getStocks(){
    return BaseRepository.api.getMyAccounts();
  }
}