import 'package:bloc_test/bloc_test.dart';
import 'package:test/test.dart';
import 'package:widgetbook_challenge/blocs/bloc.dart';
import 'package:widgetbook_challenge/controllers/controller.dart';

void main() {
  // Let us create a collections of test for the greetings functionality
  // for bloc test, you
  // 1. provide the bloc/cubit in `build`,
  // 2. add the event/call function in `act` and
  // 3. list the expected state(s) in the order of being emitted in `expect`
  group(
    'Greetings Functionality Tests. It shall include tests for the BLoC, controller and API used for requesting a greeting',
    () {
      late GreetingsController greetingsController;

      late GreetingsBloc greetingsBloc;

      // Instantiate objects to be used in tests
      setUp(() {
        greetingsController = GreetingsController();

        greetingsBloc = GreetingsBloc(greetingsController);
      });

      // Close, dispose e.t.c objects once tests have completed
      tearDown(() {
        greetingsBloc.close();
      });

      // a) Test to ensure initial state
      test(
        'The initial state of GreetingsBloc is GreetingsInitialState',
        () {
          expect(greetingsBloc.state, const GreetingsInitialState());
        },
      );

      // b) Test when no/empty name is provided for greeting
      test(
        "The controller should return an error message asking for the user's name when a null string is provided",
        () async {
          final result = await greetingsController.getGreeting(name: null);
          expect(result, "Please enter the user's name");
        },
      );

      blocTest<GreetingsBloc, GreetingsState>(
        "The bloc should emit an error message asking for the user's name when a null string is provided",
        build: () => greetingsBloc,
        act: (bloc) {
          greetingsBloc.add(const GetGreetingEvent(name: null));
        },
        expect: () => <GreetingsState>[
          const GreetingsLoadingState(),
          const GreetingsErrorState(message: "Please enter the user's name"),
        ],
      );

      test(
        "The controller should return an error message asking for the user's name when an empty string is provided",
        () async {
          final result = await greetingsController.getGreeting(name: '');
          expect(result, "Please enter the user's name");
        },
      );

      blocTest<GreetingsBloc, GreetingsState>(
        "The bloc should emit an error message asking for the user's name when an empty string is provided",
        build: () => greetingsBloc,
        act: (bloc) {
          greetingsBloc.add(const GetGreetingEvent(name: ''));
        },
        expect: () => <GreetingsState>[
          const GreetingsLoadingState(),
          const GreetingsErrorState(message: "Please enter the user's name"),
        ],
      );

      // c) Test when provided name contains non - whitespace / letter character
      test(
        'The controller should return an error message when name contains a character that is not a letter or whitespace',
        () async {
          final result = await greetingsController.getGreeting(name: '1');
          expect(result, 'Only letters allowed');
        },
      );

      blocTest<GreetingsBloc, GreetingsState>(
        'The bloc should emit an error message when name contains a character that is not a letter or whitespace',
        build: () => greetingsBloc,
        act: (bloc) {
          greetingsBloc.add(const GetGreetingEvent(name: '|'));
        },
        expect: () => <GreetingsState>[
          const GreetingsLoadingState(),
          const GreetingsErrorState(message: 'Only letters allowed'),
        ],
      );

      // d) Test when an error that is not [UnexpectedException] occurs
      test(
        'The controller should return an error message saying something went wrong when an exception that is not `UnexpectedException` is thrown',
        () async {
          final result = await greetingsController.getGreeting(
              name: 'hi', throwError: true);

          expect(result, 'Something went wrong. Contact support');
        },
      );

      blocTest<GreetingsBloc, GreetingsState>(
        'The bloc should emit an error message saying error getting response when an exception that is not `UnexpectedException` is thrown',
        build: () => greetingsBloc,
        act: (bloc) {
          greetingsBloc
              .add(const GetGreetingEvent(name: 'hi', throwError: true));
        },
        expect: () => <GreetingsState>[
          const GreetingsErrorState(message: 'Error getting response'),
        ],
      );

      // e) Test when proper name (with only letters & whitespace) is provided
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

      test(
        'The bloc should emit a success message containing hello name or an error message of `Unexpected Error` when a correct name containing only letters and/or whitespace is given',
        () async {
          greetingsBloc.add(const GetGreetingEvent(name: 'WidgetBook'));
          // skip loading State then return the next state
          final firstStateEmitted = await greetingsBloc.stream.skip(1).first;
          expect(
            firstStateEmitted,
            isIn(
              <GreetingsState>[
                const GreetingsErrorState(
                  message: 'Unexpected Error has occurred. Try again later',
                ),
                const GreetingsCompletedState(response: 'Hello WidgetBook'),
              ],
            ),
          );
        },
      );
    },
  );
}
