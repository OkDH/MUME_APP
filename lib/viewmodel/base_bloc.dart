import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mume/enums/login_state.dart';
import 'package:mume/enums/navigate_type.dart';
import 'package:mume/model/repository/base_repository.dart';
import 'package:mume/view/page/login_page.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';

///========================================비즈니스 로직=====================================================
///기본 비즈니스 로직, view 계층에서 동작하는 함수들 추상화
///========================================비즈니스 로직=====================================================
abstract class BaseBloc<A> extends Cubit<BaseState>{
  BaseBloc({
    bool isParentView = false
  }): super(Init()){
    if(isParentView){
      initLoginStateListener();
    }
  }

  ///실행되는 순서대로 함수 나열
  ///onInitState -> onReceivedArgument -> onPageResult(옵션) -> onDispose

  ///state ful widget 의 initState 실행 시
  onInitState();

  ///페이지 생성 시 데이터 전달 받는 함수
  onReceivedArgument(A? arguments);

  ///타 페이지로 이동 후 돌아왔을 때 실행되는 함수, 데이터 받아오거나 화면 갱신이 필요할 경우 사용
  onPageResult(Object? args);

  ///state ful widget 의 onDispose 실행 시
  onDispose();

  ///단순 페이지 재 빌드 setState 사용 안하기 위해서 정의했음.
  rebuildPage(){
    emit(ReBuildPage());
  }

  void initLoginStateListener() {
    BaseRepository.httpStateEmitter.stream.listen((state) => emit(state));
  }
}






///========================================상태=====================================================
///비즈니스 로직에 사용될 공통 상태
///========================================상태=====================================================
///공통으로 사용되는 상태
abstract class BaseState extends Equatable{}

///초기 상태: 화면 생성 시 1회 사용되는 상태
class Init extends BaseState{
  @override
  List<Object?> get props => [];
}

///로딩중: 서버통신 및 오래 걸리는 작업 시 로딩 중 표시시 사용될 상태
class Loading extends BaseState{
  @override
  List<Object?> get props => [];
}

///메시지 표시: 화면 얼럴트 표시 시 사용하는 곳
class ShowAlert extends BaseState{
  final String title;
  final String content;
  final bool useBtnPositiveOnly;
  final String btnPositiveText;
  final Function? btnPositiveEvent;
  final String btnNegativeText;
  final Function? btnNegativeEvent;
  final Object? popArgs;
  final bool dismissible;
  final int ignoreSeconds = DateTime.now().second;

  ShowAlert({
    this.title = Strings.information,
    this.content = Strings.pleaseLater,
    this.useBtnPositiveOnly = false,
    this.btnPositiveText = Strings.ok,
    this.btnNegativeText = Strings.cancel,
    this.btnPositiveEvent,
    this.btnNegativeEvent,
    this.popArgs,
    this.dismissible = false
  });

  @override
  List<Object?> get props => [title, content, useBtnPositiveOnly, btnPositiveText, btnNegativeText, btnPositiveEvent, btnNegativeEvent, popArgs, ignoreSeconds];
}


/// routeName: 이동할 page 명
/// pushType: pushName 또는 popAndPushedName 등
/// args: 페이지 이동 시 넘길 매개변수
class NextPage<A> extends BaseState{
  final String routeName;
  final NavigateType? navigateType;
  final A? args;
  final int ignoreSeconds = DateTime.now().second;

  NextPage({
    required this.routeName,
    this.navigateType = NavigateType.push,
    this.args,
  });

  @override
  List<Object?> get props => [routeName, navigateType, args, ignoreSeconds];
}

class UrlLaunch extends BaseState{
  final String url;

  UrlLaunch(this.url);

  @override
  List<Object?> get props => [url];
}

class BackPage<A> extends BaseState{
  final A? args;
  final int _force = DateTime.now().second;

  BackPage({this.args});

  @override
  List<Object?> get props => [args, _force];
}

class ChangeLoginState extends BaseState{
  final int _force = DateTime.now().second;
  final LoginStateType state;

  ChangeLoginState(this.state);

  @override
  List<Object?> get props => [_force, state];
}

class ReBuildPage extends BaseState{
  final int _force = DateTime.now().millisecond;

  ReBuildPage();

  @override
  List<Object?> get props => [_force];
}

class RequiredLogin extends BaseState{
  final int _force = DateTime.now().second;

  RequiredLogin();

  @override
  List<Object?> get props => [_force];
}