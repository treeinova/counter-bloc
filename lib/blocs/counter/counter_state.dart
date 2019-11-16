import 'package:meta/meta.dart';

@immutable
abstract class CounterState {
  final int count;
  CounterState(this.count);
  CounterState getStateCopy();
}

//  Inicial
class InitialState extends CounterState {
  InitialState() : super(0);

  @override
  CounterState getStateCopy() {
    return InitialState();
  }

  @override
  String toString() {
    return 'Iniciado: $count';
  }
}

// Adicionado
class AddedState extends CounterState {
  AddedState(int count) : super(count);

  @override
  CounterState getStateCopy() {
    return AddedState(count);
  }

  @override
  String toString() {
    return 'Adicionado: $count';
  }
}

// Erro
class ErrorState extends CounterState {
  final String message;
  ErrorState({int count, this.message}) : super(count);

  @override
  CounterState getStateCopy() {
    return ErrorState(count: this.count, message: this.message);
  }
}
