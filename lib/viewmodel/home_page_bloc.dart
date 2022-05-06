import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:mume/enums/bottom_menu_item_type.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/home_page_state.dart';
import 'package:mume/viewmodel/more/more_page_bloc.dart';
import 'package:mume/viewmodel/mume/mume_page_bloc.dart';
import 'package:mume/viewmodel/vr/vr_page_bloc.dart';

class HomePageBloc extends BaseBloc{
  late int currentPageIndex;
  final MumePageBloc _mumePageBloc;
  final VrPageBloc _vrPageBloc;
  final MorePageBloc _morePageBloc;

  late StreamSubscription<BaseState> _mumeStream, _vrStream, _moreStream;

  HomePageBloc(this._mumePageBloc, this._vrPageBloc, this._morePageBloc) : super(isParentView: true);

  @override
  onInitState() {
    currentPageIndex = 0;
    initSubscribeSubPageState();
  }

  @override
  onReceivedArgument(arguments) {

  }

  @override
  onPageResult(Object? args) {

  }

  @override
  onDispose() {
    _mumeStream.cancel();
    _vrStream.cancel();
    _moreStream.cancel();
  }

  void clickBottomMenuItem(int index){
    currentPageIndex = index;
    emit(ChangePage(currentPageIndex));
  }

  void initSubscribeSubPageState() {
    _mumeStream = _mumePageBloc.stream.listen((event) => _changeState(event));
    _vrStream = _vrPageBloc.stream.listen((event) => _changeState(event));
    _moreStream = _morePageBloc.stream.listen((event) => _changeState(event));
  }

  _changeState(BaseState event) {
    debugPrint("_changeState ChangeLoginState => event($event)");
    if(event is ChangeLoginState){
      debugPrint("_changeState ChangeLoginState");
      emit(event);
    }
  }
}