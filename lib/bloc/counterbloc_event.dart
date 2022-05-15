// ignore_for_file: must_be_immutable

part of 'counterbloc_bloc.dart';

abstract class CounterblocEvent extends Equatable {
  const CounterblocEvent();
  @override
  List<Object> get props => [];
}

class Increment extends CounterblocEvent {}

class Decrement extends CounterblocEvent {}

class SetValue extends CounterblocEvent {}
