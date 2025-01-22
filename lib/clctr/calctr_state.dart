part of 'calctr_bloc.dart';

@immutable
class CalctrState {
  final String init;

  CalctrState({required this.init});
}

final class CalctrInitial extends CalctrState {
  CalctrInitial():super(init: "");
}
