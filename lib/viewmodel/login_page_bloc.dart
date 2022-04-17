import 'package:mume/enums/login_type.dart';
import 'package:mume/model/dto/response.dart';
import 'package:mume/model/dto/user.dart';
import 'package:mume/model/repository/login_repository.dart';
import 'package:mume/view/page/home_page.dart';
import 'package:mume/viewmodel/base_bloc.dart';

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
  onPageResult(Object? args) {

  }

  void clickLogin(LoginType type) {
    emit(Loading());
    _loginRepository.login(type)
        .then((response) => successValidation(response))
        .then((user) => saveSession(user))
        .then((user) => emit(NextPage(routeName: HomePage.routeName, navigateType: NavigateType.popAndPush)))
        .catchError((e) => emit(ShowAlert()));
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