import 'package:bloc_event_test/bloc/test/test_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory<TestBloc>(
    () => TestBloc(),
  );
}
