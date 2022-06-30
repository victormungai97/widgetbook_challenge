/// Define tests for the Greetings Controller

import 'package:test/test.dart';
import 'package:widgetbook_challenge/controllers/controller.dart';

void main() {
  group(
    'Greetings Controller Tests.',
    () {
      late GreetingsController greetingsController;

      // Instantiate objects to be used in tests
      setUp(() {
        greetingsController = GreetingsController();
      });

      // i) Test when no/empty name is provided for greeting
      test(
        """
        Given a user submitting null string as name
        When greeting request is made
        Then error message asking for user's name is returned
        """,
        () async {
          final result = await greetingsController.getGreeting(name: null);
          expect(result, "Please enter the user's name");
        },
      );

      test(
        """
        Given a user submitting empty string as name
        When greeting request is made
        Then error message asking for user's name is returned
        """,
        () async {
          final result = await greetingsController.getGreeting(name: '');
          expect(result, "Please enter the user's name");
        },
      );

      // ii) Test when provided name contains non - whitespace / letter character
      test(
        '''
        Given a user submitting name that contains character(s) that
          is not a letter or whitespace
        When greeting request is made
        Then error message informing them to only input letters 
          in name is returned
        ''',
        () async {
          final result = await greetingsController.getGreeting(name: '1');
          expect(result, 'Only letters allowed');
        },
      );

      // iii) Test when an error that is not [UnexpectedException] occurs
      test(
        '''
        Given an exception that is not `UnexpectedException` occurring
        When greeting request is made
        Then error message informing user that something went wrong is returned
        ''',
        () async {
          final result = await greetingsController.getGreeting(
            name: 'hi',
            throwError: true,
          );

          expect(result, 'Something went wrong. Contact support');
        },
      );

      // iv) Test when proper name (with only letters & whitespace) is provided
      test(
        """
        Given a user submitting a proper name containing only letters/whitespace
        When greeting request is made
        Then a success message saying 'Hello `name`' 
          or an error message of `Unexpected Error`is returned
        """,
        () async {
          final result =
              await greetingsController.getGreeting(name: 'WidgetBook.');
          expect(
            result,
            isIn(<String>[
              'Hello WidgetBook',
              'Unexpected Error has occurred. Try again later'
            ]),
          );
        },
      );
    },
  );
}
