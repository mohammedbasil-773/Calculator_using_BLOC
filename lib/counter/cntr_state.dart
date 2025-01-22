part of 'cntr_bloc.dart';


class CntrState {
  final int res;

  CntrState({required this.res});
}

class CntrInitial extends CntrState {
  CntrInitial():super(res: 0);
}
