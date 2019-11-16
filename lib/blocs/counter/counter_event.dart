import 'package:app/blocs/counter/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CounterEvent {
  CounterState applyAsync({CounterState currentState, CounterBloc bloc});
}

// Quando adicionar deve somar 1 no estado atual
class AddEvent extends CounterEvent {
  @override
  CounterState applyAsync({CounterState currentState, CounterBloc bloc}) {
    // Regra de Negócio
    int newValue = currentState.count + 1;
    // Retorna o novo estado
    return AddedState(newValue);
  }
}
