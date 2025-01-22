import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calctr_event.dart';
part 'calctr_state.dart';

class CalctrBloc extends Bloc<CalctrEvent, CalctrState> {
  CalctrBloc() : super(CalctrInitial()) {
    on<Addition>((event, emit) {
      return emit(
        CalctrState(init: event.num1+event.num2)
      );
    });
    on<Subtraction>((event, emit) {
      return emit(
          CalctrState(init: event.num1-event.num2)
      );
    });
    on<Multipliy>((event, emit) {
      return emit(
          CalctrState(init: event.num1*event.num2)
      );
    });
  }
}
