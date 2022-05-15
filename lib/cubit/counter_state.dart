// ignore_for_file: must_be_immutable, unnecessary_this

part of 'counter_cubit.dart';

abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {}

class IncrementState extends CounterState {
  int counter;
  IncrementState({required this.counter});
  @override
  List<Object> get props => [counter];
}

class DecrementState extends CounterState {
  int counter;
  DecrementState({required this.counter});
  @override
  List<Object> get props => [counter];
}

class SetValueState extends CounterState {
  int counter;
  SetValueState({required this.counter});
  @override
  List<Object> get props => [counter];
}
