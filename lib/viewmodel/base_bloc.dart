import 'package:vocas_jp/viewModel/base_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<A> extends Cubit<BaseState>{
  BaseBloc() : super(Init());

  ///state ful widget 의 initState 실행 시
  onInitState();

  ///state ful widget 의 onDispose 실행 시
  onDispose();

  ///initState 에서 getArguments 함수를 통해 매개변수 전달받을 때 싫행되는 함수
  onReceivedArgument(A? arguments);

  ///현재 bloc 에서 추상화된 page에서 타 page로 navigation 후에 돌아왔을 때 실행되는 함수
  onPageResult(Object? args); //onActivityResult 와 동일한 함수

  ///onPushPageResult 실행 중 error 발생 시 샐행되는 함수
  onFailPageResult(Exception? error);
}