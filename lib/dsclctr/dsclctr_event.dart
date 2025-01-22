part of 'dsclctr_bloc.dart';

@immutable
sealed class DsclctrEvent {}
class Clik extends DsclctrEvent{
  final String clicked;

  Clik({required this.clicked});
}

