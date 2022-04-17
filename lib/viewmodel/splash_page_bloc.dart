import 'package:mume/view/page/home_page.dart';
import 'package:mume/viewmodel/base_bloc.dart';

class SplashPageBloc extends BaseBloc<Object>{

  @override
  onInitState() {
    Future.delayed(const Duration(milliseconds: 1500), (){
      emit(NextPage(routeName: HomePage.routeName, navigateType: NavigateType.popAndPush));
    });
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
}