/// Define tests for the Greetings States.
/// This is particularly using we're using sealed classes using `freezed`
/// to represent our States.
/// so we need to ensure that the factory constructors correctly
/// return the corresponding States.
import 'package:test/test.dart';
import 'package:widgetbook_challenge/blocs/bloc.dart';

void main() {
  group('Greetings States Tests.', () {
    test('returns correct values for GreetingsState.initial', () {
      const state = GreetingsState.initial();
      expect(state, isA<GreetingsInitial>());
    });

    test('returns correct values for GreetingsState.load', () {
      const state = GreetingsState.load();
      expect(state, isA<GreetingsRequestInProgress>());
    });

    test('returns correct values for GreetingsState.success', () {
      const state = GreetingsState.success(response: 'response');
      expect(state, isA<GreetingsRequestSuccess>());
    });

    test('returns correct values for GreetingsState.failure', () {
      const state = GreetingsState.failure(message: 'message');
      expect(state, isA<GreetingsRequestFailure>());
    });

    test('returns correct values for GreetingsState.reset', () {
      const state = GreetingsState.reset();
      expect(state, isA<GreetingsRequestReset>());
    });
  });
}
