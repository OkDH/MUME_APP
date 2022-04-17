import 'package:equatable/equatable.dart';

abstract class HomePageState extends Equatable{}

class ChangePage extends HomePageState{
  final int index;

  ChangePage(this.index);

  @override
  List<Object?> get props => [index];
}