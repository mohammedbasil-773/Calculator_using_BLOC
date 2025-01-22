part of 'cntr_bloc.dart';

@immutable
sealed class CntrEvent {}
class Increment extends CntrEvent{}
class Decrement extends CntrEvent{}
class Multiple extends CntrEvent{}
