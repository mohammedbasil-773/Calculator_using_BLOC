part of 'calctr_bloc.dart';

@immutable
sealed class CalctrEvent {}
class Addition extends CalctrEvent{
  final int num1;
  final int num2;

  Addition({required this.num1,required this.num2});
}
class Subtraction extends CalctrEvent{
  final int num1;
  final int num2;

  Subtraction({required this.num1, required this.num2});
}
class Multipliy extends CalctrEvent{
  final int num1;
  final int num2;

  Multipliy({required this.num1, required this.num2});
}

