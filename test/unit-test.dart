import 'package:app/blocs/counter/index.dart';
import 'package:test/test.dart';

void main() {
  group('CounterBloc', () {
    CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    test('Quando o app iniciar o valor deve ser zero', () {
      expect(counterBloc.initialState.count, 0);
    });

    test('Quando o clicar em adicionar dever ser 1', () {
      final List<String> expected = ['Iniciado: 0', 'Adicionado: 1'];

      expectLater(
        counterBloc,
        emitsInOrder([AddedState(1), emitsDone]),
      );
      counterBloc.add(AddEvent());
    });
  });
}
