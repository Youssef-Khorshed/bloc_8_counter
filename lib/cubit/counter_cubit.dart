import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int counter = 0;
  void inc() {
    counter++;
    emit(IncrementState(counter: counter));
  }

  void dec() {
    counter--;
    emit(DecrementState(counter: counter));
  }

  void setvalue() {
    counter = 10;
    emit(SetValueState(counter: counter));
  }
}
