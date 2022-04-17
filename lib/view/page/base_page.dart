import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mume/view/componont/alert.dart';
import 'package:mume/view/componont/loading.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

///제네릭 타입
/// [A] 페이지 이동 시 전달받는 데이터 타입
/// [B] 페이지와 연결된 비즈니스 로직 객체 타입, [bloc]의 타입
/// [T] 구현할 페이지 타입
///
///구현 시 주의사항
///1. override 함수 자동 완성
///   구현하는 페이지에서 'package:mume/viewmodel/base_bloc.dart'; import 하지 않으면 override 함수 자동완성 되지 않을 수 있음
abstract class BasePageState<A extends Object, B extends BaseBloc, T extends StatefulWidget> extends State<T>{
  late B bloc;


  ///페이지 생성 시 1회 실행
  ///기능
  ///   1. 비즈니스 로직 객체[bloc] 초기화
  ///   2. [getArguments]를 통해 데이터 전달 받음
  ///
  ///주의사항
  ///   1. override 시 super 호출 필수
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


  ///페이지 파괴 시 1회 실행, 주로 자원 해제 코드 실행하는 곳
  ///
  ///주의사항
  ///   1. override 시 super 호출 필수
  @override
  void dispose() {
    debugPrint("${T.toString()} dispose start");
    bloc.onDispose();
    super.dispose();
  }


  ///신규 상태 방출 시 가장 먼저 실행 되는 함수
  ///
  ///화면 갱신 시 실행되는 함수 순서
  ///   [build] -> [onChangeStateBuilder] -> [buildPage]
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


  ///상태 변경 시 [onChangeStateListener] 실행(얼럴트, 페이지 이동, 등) 여부를 판단
  ///
  /// [pre] 현재 상태 이전의 상태,
  /// [current] 현재 상태,
  /// [windowSize] 휴대폰 사이즈 정보가 담긴 객체
  bool onChangeStateListenWhen(BaseState pre, BaseState current, Size windowSize) {
    return true;
  }


  ///상태 변경 시 현재 페이지의 화면 갱신 외 동작(얼럴트, 페이지 이동 등) 정의
  ///
  ///매개변수
  /// [state] 현재 상태,
  /// [windowSize] 휴대폰 사이즈 정보가 담긴 객체
  ///
  ///분기 조건
  /// [ShowAlert] 메시지 표시
  /// [NextPage] 페이지 이동
  /// [UrlLaunch] 앱스토어 이동, 타사 앱으로 연결 등
  /// 
  ///주의사항
  ///   1. override 시 super 호출 필수
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    debugPrint("${T.toString()} onListenerBlocConsumer: state == $state");
    if(state is ShowAlert){
      showDialog(
        context: context,
        builder: (context) => MyAlert(state),
        barrierDismissible: state.dismissible,
      );

    }else if(state is NextPage){
      if(state.navigateType == null || state.navigateType == NavigateType.push){
        Navigator.pushNamed(context, state.routeName, arguments: state.args)
            .then((value) => bloc.onPageResult(value))
            .catchError((e) => debugPrint("${T.toString()} GoNextPage error == ${e.toString()}"));

      }else if(state.navigateType == NavigateType.popAndPush){
        Navigator.popAndPushNamed(context, state.routeName, arguments: state.args)
            .then((value) => bloc.onPageResult(value))
            .catchError((e) => debugPrint("${T.toString()} GoNextPage error == ${e.toString()}"));
      }
    }else if(state is UrlLaunch){
      canLaunch(state.url)
          .then((ok) => ok? state.url : throw Exception())
          .then((url) => launch(url))
          .catchError((e) => debugPrint("launch error == ${e.toString()}"));
    }
  }


  ///상태 변경 시 [onChangeStateBuilder] 실행(화면 갱신) 여부를 판단
  ///
  /// [pre] 현재 상태 이전의 상태,
  /// [current] 현재 상태,
  /// [windowSize] 휴대폰 사이즈 정보가 담긴 객체
  bool onChangeStateBuildWhen(BaseState pre, BaseState current, Size windowSize) {
    return true;
  }


  ///상태 변경 시 현재 페이지의 화면 갱신 [Loading] 상태만 걸러냄
  ///
  ///화면 갱신 시 실행되는 함수 순서
  ///   [build] -> [onChangeStateBuilder] -> [buildPage]
  ///
  ///매개변수
  /// [state] 현재 상태,
  /// [windowSize] 휴대폰 사이즈 정보가 담긴 객체
  ///
  ///분기 조건
  /// [Loading] 전역으로 사용하는 로딩 이미지 표시
  ///
  ///주의사항
  ///   1. override 시 super 호출 필수 또는 [buildPage] 싫행
  Widget onChangeStateBuilder(BuildContext context, BaseState state, Size windowSize) {
    debugPrint("${T.toString()} onBuildBlocConsumer: state == $state");
    if(state is Loading){
      return LoadingWidget(child: buildPage(context, windowSize));
    }else{
      return buildPage(context, windowSize);
    }
  }


  ///페이지 이동 시 전달받은 데이터 꺼내는 함수
  ///
  /// [Future.delayed] 없이 바로 실행하면 매개변수 못받아옴
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


  ///페이지 빌드 시 실행 됨,
  ///화면 갱신 시 실행되는 함수 순서
  ///   [build] -> [onChangeStateBuilder] -> [buildPage]
  Widget buildPage(BuildContext context, Size windowSize);
}