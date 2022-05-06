import 'package:mume/model/dto/mume/account.dart';
import 'package:mume/model/dto/mume/state_map.dart';
import 'package:mume/model/repository/base_repository.dart';
import 'package:retrofit/retrofit.dart';

class AccountRepository extends BaseRepository{
  Future<HttpResponse<List<Account>>> getMyAccountList(){
    return BaseRepository.api.getMyAccounts();
  }

  Future<HttpResponse<StateMap>> getMyAccountState(Map<String, dynamic> params){
    return BaseRepository.api.getMyAccountState(params);
  }
}