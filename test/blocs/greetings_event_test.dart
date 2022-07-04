/// Define tests for the Greetings Events.
/// This is particularly using we're using sealed classes using `freezed`
/// to represent our Events.
/// so we need to ensure that the factory constructors correctly
/// return the corresponding Events.
import 'package:test/test.dart';
import 'package:widgetbook_challenge/blocs/bloc.dart';

void main() {
  group('Greetings Events Tests.', () {
    test('returns correct values for GreetingsEvent.requested', () {
      const event = GreetingsEvent.requested(name: '', throwError: true);
      expect(event, isA<GreetingsRequested>());
    });

    test('returns correct values for GreetingsEvent.reset', () {
      const event = GreetingsEvent.reset();
      expect(event, isA<GreetingsScreenReset>());
    });
  });
}
