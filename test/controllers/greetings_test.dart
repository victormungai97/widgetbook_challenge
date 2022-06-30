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
        "The controller should return an error message asking for the user's name when a null string is provided",
        () async {
          final result = await greetingsController.getGreeting(name: null);
          expect(result, "Please enter the user's name");
        },
      );

      test(
        "The controller should return an error message asking for the user's name when an empty string is provided",
        () async {
          final result = await greetingsController.getGreeting(name: '');
          expect(result, "Please enter the user's name");
        },
      );

      // ii) Test when provided name contains non - whitespace / letter character
      test(
        'The controller should return an error message when name contains a character that is not a letter or whitespace',
        () async {
          final result = await greetingsController.getGreeting(name: '1');
          expect(result, 'Only letters allowed');
        },
      );

      // iii) Test when an error that is not [UnexpectedException] occurs
      test(
        'The controller should return an error message saying something went wrong when an exception that is not `UnexpectedException` is thrown',
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
        'The controller should return a success message containing hello name or an error message of `Unexpected Error` when a correct name containing only letters and/or whitespace is given',
        () async {
          final result =
              await greetingsController.getGreeting(name: 'WidgetBook');
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
