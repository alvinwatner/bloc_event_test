import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'test_event.dart';
part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(TestInitialState()) {
    on<TestGetInitialDataTriggered>(_onGetInitialDataTriggered);
  }

  void _onGetInitialDataTriggered(
    TestGetInitialDataTriggered event,
    Emitter<TestState> emit,
  ) async {
    emit(TestLoadInProgress());
  }
}
