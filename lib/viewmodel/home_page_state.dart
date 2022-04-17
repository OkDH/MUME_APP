import 'package:mume/viewmodel/base_bloc.dart';

class ChangePage extends BaseState{
  final int index;

  ChangePage(this.index);

  @override
  List<Object?> get props => [index];
}

class SwipeChangePage extends BaseState{
  final int index;

  SwipeChangePage(this.index);

  @override
  List<Object?> get props => [index];
}