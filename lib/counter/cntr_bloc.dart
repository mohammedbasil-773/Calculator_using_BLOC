import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cntr_event.dart';
part 'cntr_state.dart';

class CntrBloc extends Bloc<CntrEvent, CntrState> {
  CntrBloc() : super(CntrInitial()) {
    on<Increment>((event, emit) {
      return emit(CntrState(res: state.res+1));
    });
    on<Decrement>((event, emit) {
      return emit(CntrState(res: state.res-1));
    });
    on<Multiple>((event, emit) {
      return emit(CntrState(res: state.res*5));
    });
  }
}
