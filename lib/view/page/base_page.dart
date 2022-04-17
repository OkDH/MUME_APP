import 'package:vocas_jp/viewModel/base_bloc.dart';
import 'package:vocas_jp/viewModel/base_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///A: 해당 페이지로 route 시 넘겨받는 매개변수 타입
///B: bloc 타입 지정
///P: State<>에 들어갈 페이지 타입
abstract class BasePageState<A extends Object, B extends BaseBloc, T extends StatefulWidget> extends State<T>{
  late B bloc;

  @override
  void initState() {
    debugPrint("${T.toString()} initState start");

    bloc = context.read<B>();
    bloc.onInitState();
    getArguments(context)
        .then((value) => bloc.onReceivedArgument(value))
        .catchError((e) => debugPrint("${T.toString()} onReceivedArgument error == ${e.toString()}"));
    super.initState();
  }

  @override
  void dispose() {
    debugPrint("${T.toString()} dispose start");
    bloc.onDispose();
    super.dispose();
  }

  Widget buildScreen(BuildContext context, Size windowSize);

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;

    return BlocConsumer<B, BaseState>(
      buildWhen: (pre, current) => onChangeStateBuildWhen(pre, current, windowSize),
      builder: (context, state) => onChangeStateBuilder(context, state, windowSize),
      listenWhen: (pre, current) => onChangeStateListenWhen(pre, current, windowSize),
      listener: (context, state) => onChangeStateListener(context, state, windowSize),
    );
  }

  ///부모는 무조건 빌드하도록 true default, 무조건 빌드하지 않고 싶을 경우 override 필요함
  bool onChangeStateBuildWhen(BaseState pre, BaseState current, Size windowSize) {
    return true;
  }

  ///부모는 무조건 실행하도록 true default, 무조건 실행하지 않고 싶을 경우 override 필요함
  bool onChangeStateListenWhen(BaseState pre, BaseState current, Size windowSize) {
    return true;
  }

  ///bloc consumer build 될 때 실행되는 함수
  Widget onChangeStateBuilder(BuildContext context, BaseState state, Size windowSize) {
    debugPrint("${T.toString()} onBuildBlocConsumer: state == $state");
    if(state is Loading){
      return Container();   //로딩 위젯으로 감싸여진 baseView() 호출 필요
    }else{
      return buildScreen(context, windowSize);
    }
  }

  ///bloc consumer listener 될 때 실행되는 함수
  ///처리되는 조건
  ///1. BaseState 중 Fail: 얼럴트 표시
  ///2. BaseState 중 GoNextPage: 페이지 이동은 모두 여기 거쳐감
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    debugPrint("${T.toString()} onListenerBlocConsumer: state == $state");
    if(state is Fail){

    }else if(state is GoNextPage){
      if(state.navigateType == null || state.navigateType == NavigateType.push){
        Navigator.pushNamed(context, state.routeName, arguments: state.args)
            .then((value) => bloc.onPageResult(value))
            .catchError((e) => bloc.onFailPageResult(e));

      }else if(state.navigateType == NavigateType.popAndPush){
        Navigator.popAndPushNamed(context, state.routeName, arguments: state.args)
            .then((value) => bloc.onPageResult(value))
            .catchError((e) => bloc.onFailPageResult(e));
      }
    }else if(state is Success){

    }
  }

  ///initState 에서 매개변수 전달 받는 함수
  Future<A?> getArguments(BuildContext context){
    return Future.delayed(Duration.zero, (){
      Object? args = ModalRoute.of(context)?.settings.arguments;
      debugPrint("${T.toString()} getArguments start: args == $args");

      if(args == null){
        return null;
      }else if(args is A){
        return args;
      }else {
        throw Exception("${T.toString()} getArguments error: args type is not ${A.runtimeType}. args is ${args.runtimeType}");
      }
    });
  }
}