import '../route.dart';

class CalcBloc extends Bloc<CalcEvents, CalcStates> {
  String value = '';
  String result = '';

  CalcBloc(CalcStates initialState) : super(initialState);


  @override
  Stream<CalcStates> mapEventToState(CalcEvents event) async* {
    if (event is InitializeEvent) {
      yield InitializeState();
    } else if (event is AddCharEvent) {
      List<String> data = CalcBusiness().HandleNewEntry(value, event.value);
      value = data[0];
      result = data[1];
      yield AddCharState(value, result);
    } else if (event is ClearEvent) {
      yield ClearState(value = '', result = '');
    } else if (event is RemoveEvent) {
      if (value.length != 0) {
        value = value.substring(0, (value.length - 1));
      }
      List<String> data = CalcBusiness().HandleNewEntry(value, '');
      value = data[0];
      result = data[1];
      yield RemoveState(value, result);
    } else if (event is EqualsEvent) {
      value = result;
      yield EqualsState(result, result = '');
    }
  }
}