import 'package:vocas_jp/model/dto/response.dart';
import 'package:vocas_jp/model/dto/user.dart';
import 'package:vocas_jp/model/enums/login_type.dart';
import 'package:vocas_jp/model/repository/login_repository.dart';
import 'package:vocas_jp/view/page/home/home_page.dart';
import 'package:vocas_jp/viewModel/base_bloc.dart';
import 'package:vocas_jp/viewModel/base_state.dart';

class LoginPageBloc extends BaseBloc{
  final LoginRepository _loginRepository;

  LoginPageBloc(this._loginRepository);

  @override
  onInitState() {

  }

  @override
  onDispose() {

  }

  @override
  onReceivedArgument(arguments) {

  }

  @override
  onFailPageResult(Exception? error) {

  }

  @override
  onPageResult(Object? args) {

  }

  void clickLogin(LoginType type) {
    emit(Loading());
    _loginRepository.login(type)
        .then((response) => successValidation(response))
        .then((user) => saveSession(user))
        .then((user) => emit(GoNextPage(routeName: HomePage.routeName, navigateType: NavigateType.popAndPush)))
        .catchError((e) => emit(Fail(data: e)));
  }

  User successValidation(Response<User> rsp) {
    if(rsp.resultData == null) throw Exception("resultData is null");

    return rsp.resultData!;
  }

  User saveSession(User user) {
    //TODO save user

    return user;
  }
}