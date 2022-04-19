import 'package:mume/view/page/home_page.dart';
import 'package:mume/view/page/login_page.dart';
import 'package:mume/viewmodel/base_bloc.dart';

class MumePageBloc extends BaseBloc<Object>{

  @override
  onInitState() {

  }

  @override
  onReceivedArgument(arguments) {

  }

  @override
  onPageResult(Object? args) {

  }

  @override
  onDispose() {

  }

  clickLogin() {
    emit(NextPage(routeName: LoginPage.routeName));
  }
}