import 'package:mume/model/dto/mume/account.dart';
import 'package:mume/model/repository/base_repository.dart';
import 'package:retrofit/retrofit.dart';

class AccountRepository extends BaseRepository{
  Future<HttpResponse<List<Account>>> getMyAccountList(){
    return BaseRepository.api.getMyAccounts();
  }
}