// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'counterbloc_event.dart';
part 'counterbloc_state.dart';

class CounterblocBloc extends Bloc<CounterblocEvent, CounterblocState> {
  int counter = 0;
  CounterblocBloc() : super(CounterblocInitial()) {
    on<Increment>(inc);
    on<Decrement>(dec);
    on<SetValue>(setvalue);
  }
  void inc(Increment event, Emitter<CounterblocState> emit) {
    counter++;
    emit(IncremenBloctState(counter: counter));
  }

  void dec(Decrement event, Emitter<CounterblocState> emitter) {
    counter--;
    emit(DecrementBlocState(counter: counter));
  }

  void setvalue(SetValue event, Emitter<CounterblocState> emitter) {
    counter = 10;
    emit(SetValueBlocState(counter: counter));
  }
}
