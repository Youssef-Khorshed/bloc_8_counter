// ignore_for_file: must_be_immutable

part of 'counterbloc_bloc.dart';

abstract class CounterblocState extends Equatable {
  const CounterblocState();

  @override
  List<Object> get props => [];
}

class CounterblocInitial extends CounterblocState {}

class CounterInitial extends CounterblocState {}

class IncremenBloctState extends CounterblocState {
  int counter;
  IncremenBloctState({required this.counter});
  @override
  List<Object> get props => [counter];
}

class DecrementBlocState extends CounterblocState {
  int counter;
  DecrementBlocState({required this.counter});
  @override
  List<Object> get props => [counter];
}

class SetValueBlocState extends CounterblocState {
  int counter;
  SetValueBlocState({required this.counter});
  @override
  List<Object> get props => [counter];
}
