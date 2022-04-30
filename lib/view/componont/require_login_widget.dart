import 'package:flutter/widgets.dart';
import 'package:mume/viewmodel/login_page_bloc.dart';

class RequireLoginWidget extends StatelessWidget {
  final LoginBloc bloc;
  final Widget intendLoginWidget;
  final Widget child;

  const RequireLoginWidget({
    Key? key,
    required this.bloc,
    required this.intendLoginWidget,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: bloc.isShowLoginView(),
        builder: (context, snapshot) {
          debugPrint("RequireLoginWidget ${snapshot.data}");
          if(snapshot.data ?? false){
            return child;
          }else{
            return intendLoginWidget;
          }
        }
    );
  }
}
