/// Define tests for the Greetings Controller
import 'dart:math' as math;

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart' as mocktail;
import 'package:test/test.dart';
import 'package:widgetbook_challenge/controllers/controller.dart';

import 'greetings_test.mocks.dart';

class MockController extends mocktail.Mock implements Controller {}

@GenerateMocks([math.Random])
void main() {
  group(
    'Greetings Controller Tests.',
    () {
      late GreetingsController greetingsController;

      late math.Random mockRandom;

      // Instantiate objects to be used in tests
      setUp(() {
        mockRandom = MockRandom();

        greetingsController = GreetingsController(
          randomNumberGenerator: mockRandom,
        );
      });

      // i) Test greetings controller instance is correctly instantiated
      test(
        '''
            When creating a greetings constructor 
            Then the instance is returned & is subclass of Controller
            ''',
        () {
          expect(greetingsController, isNotNull);
          expect(greetingsController, isA<GreetingsController>());
          expect(greetingsController, const TypeMatcher<Controller>());
        },
      );

      // ii) Test when no name is provided for greeting
      test(
        """
        Given a user submitting null string as name
        When greeting request is made
        Then error message asking for user's name is returned
        """,
        () async {
          final result = await greetingsController.requestGreeting(name: null);
          expect(result, "Please enter the user's name");
        },
      );

      // iii) Test when empty name is provided for greeting
      test(
        """
        Given a user submitting empty string as name
        When greeting request is made
        Then error message asking for user's name is returned
        """,
        () async {
          final result = await greetingsController.requestGreeting(name: '');
          expect(result, "Please enter the user's name");
        },
      );

      // iv) Test when provided name contains non - whitespace / letter character
      test(
        '''
        Given a user submitting name that contains character(s) that
          is not a letter or whitespace
        When greeting request is made
        Then error message informing them to only input letters 
          in name is returned
        ''',
        () async {
          final result = await greetingsController.requestGreeting(name: '1');
          expect(result, 'Only letters allowed');
        },
      );

      // v) Test when an error that is not [UnexpectedException] occurs
      test(
        '''
        Given an exception that is not `UnexpectedException` occurring
        When greeting request is made
        Then error message informing user that something went wrong is returned
        ''',
        () async {
          // ARRANGE
          mocktail
              .when(
                () => MockController().isStringEmpty(mocktail.any()),
              )
              .thenThrow(
                Exception('This is an exception in controller'),
              );

          // ACT
          final result = await greetingsController.requestGreeting(name: 'hi');

          // ASSERT
          expect(result, 'Something went wrong. Contact support');
        },
      );

      // vi) Test when proper name (with only letters & whitespace) is provided
      test(
        r"""
        Given a user submitting a proper name containing only letters/whitespace
        When greeting request is made
        Then a success message saying 'Hello $name' 
          or an error message of `Unexpected Error`is returned
        """,
        () async {
          final result = await const GreetingsController().requestGreeting(
            name: 'WidgetBook',
          );
          expect(
            result,
            isIn(<String>[
              'Hello WidgetBook',
              'Unexpected Error has occurred. Try again later'
            ]),
          );
        },
      );

      // vii) Test when proper name and mocked odd number generator is provided
      test(
        '''
        Given mocked random number generator that is stubbed to generate odd number
          within range of 0 and 3
        When greeting request is made
        Then error message of `Unexpected Error`is returned
        ''',
        () async {
          // Stub a `nextInt` method to return an odd number before interacting
          when(mockRandom.nextInt(3)).thenReturn(1);

          // make request
          final result = await greetingsController.requestGreeting(name: 'hi');

          // compare values
          expect(result, 'Unexpected Error has occurred. Try again later');
        },
      );

      // viii) Test when proper name and mocked even number generator's provided
      test(
        r"""
        Given mocked random number generator that is stubbed to generate even number
          within range of 0 and 3
        When greeting request is made
        Then a success message saying 'Hello $name'
        """,
        () async {
          // Stub a `nextInt` method to return an odd number before interacting
          when(mockRandom.nextInt(3)).thenReturn(2);

          // make request
          final result = await greetingsController.requestGreeting(
            name: 'WidgetBook',
          );

          // compare values
          expect(result, 'Hello WidgetBook');
        },
      );
    },
  );
}
