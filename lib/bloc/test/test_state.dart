// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'test_bloc.dart';

abstract class TestState extends Equatable {
  const TestState();

  @override
  List<Object> get props => [];
}

class TestInitialState extends TestState {}

class TestLoadInProgress extends TestState {}
