import 'package:flutter/widgets.dart';
import 'package:mume/viewmodel/base_bloc.dart';

class RequireLoginWidget extends StatelessWidget {
  final BaseBloc bloc;
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
        future: bloc.showLoginView(),
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
