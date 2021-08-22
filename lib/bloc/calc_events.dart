import '../route.dart';

class CalcEvents extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitializeEvent extends CalcEvents {
}

class AddCharEvent extends CalcEvents {
  final String value;
  AddCharEvent(this.value);
}

class ClearEvent extends CalcEvents {}

class RemoveEvent extends CalcEvents {}

class NumberEvent extends CalcEvents {}

class EqualsEvent extends CalcEvents {}




