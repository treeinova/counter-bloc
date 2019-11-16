import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:app/blocs/counter/index.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterState get initialState => InitialState();

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    try {
      yield event.applyAsync(currentState: state, bloc: this);
    } catch (_, stackTrace) {
      yield ErrorState(count: state.count, message: stackTrace.toString());
    }
  }
}
