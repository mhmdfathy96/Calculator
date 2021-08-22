import '../route.dart';


 abstract class CalcStates extends Equatable {
}

class InitializeState extends CalcStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AddCharState extends CalcStates{
   final String equation;
   final String result;

  AddCharState(this.equation, this.result);

  @override
  // TODO: implement props
  List<Object?> get props => [equation,result];

}

 class ClearState extends CalcStates{
   final String equation;
   final String result;

   ClearState(this.equation, this.result);

   @override
   // TODO: implement props
   List<Object?> get props => [equation,result];
}

   class RemoveState extends CalcStates{
    final String equation;
    final String result;

    RemoveState(this.equation, this.result);

    @override
    // TODO: implement props
    List<Object?> get props => [equation,result];
}

class EqualsState extends CalcStates{
  final String equation;
  final String result;

  EqualsState(this.equation, this.result);

  @override
  // TODO: implement props
  List<Object?> get props => [equation,result];
}