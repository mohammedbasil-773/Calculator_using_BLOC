import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dsclctr_event.dart';
part 'dsclctr_state.dart';

class DsclctrBloc extends Bloc<DsclctrEvent, DsclctrState> {
  double? fnum;
  double? snum;
  String opp = "";
  String input = "";
  String output = "";

  DsclctrBloc() : super(DsclctrInitial()) {
    on<Clik>((event, emit) {
      if (event.clicked == "AC") {
        // Reset everything on "AC"
        fnum = snum = null;
        input = output = opp = "";
      } else if (event.clicked == "+" || event.clicked == "-" ||
          event.clicked == "*" || event.clicked == "/") {
        // Store the first number and operator
        if (input.isNotEmpty) {
          fnum = double.tryParse(input);
          opp = event.clicked;
          input = ""; // Clear input for the next number
        }
      } else if (event.clicked == "=") {
        // Perform the operation when "=" is pressed
        if (input.isNotEmpty) {
          snum = double.tryParse(input);
          if (fnum != null && snum != null) {
            switch (opp) {
              case "+":
                output = (fnum! + snum!).toString();
                break;
              case "-":
                output = (fnum! - snum!).toString();
                break;
              case "*":
                output = (fnum! * snum!).toString();
                break;
              case "/":
                if (snum != 0) {
                  output = (fnum! / snum!).toString();
                } else {
                  output = "Error";
                }
                break;
            }
          }
        }
        input = output; // Update input with the result for further operations
      } else {
        // Append digits and decimal points to input
        input += event.clicked;
      }

      emit(DsclctrState(init: input.isNotEmpty
          ? input
          : output)); // Show input or output based on the situation
    });
  }
}
