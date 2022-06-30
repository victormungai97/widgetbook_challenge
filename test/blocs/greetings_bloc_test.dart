/// Define tests for the Greetings Bloc
import 'dart:math' as math;

import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:widgetbook_challenge/blocs/bloc.dart';
import 'package:widgetbook_challenge/controllers/controller.dart';

import 'greetings_bloc_test.mocks.dart';

@GenerateMocks([math.Random])
void main() {
  // Let us create a collections of test for the greetings bloc

  group(
    'Greetings BLoC Tests.',
    () {
      late GreetingsController greetingsController;

      late GreetingsBloc greetingsBloc;

      late MockRandom mockRandom;

      // Instantiate objects to be used in tests
      setUp(() {
        mockRandom = MockRandom();

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
      blocTest<GreetingsBloc, GreetingsState>(
        """
        Given null string submitted as name
        When greeting event is sent to Bloc
        Then loading state then error state containing message 
          asking for user's name is emitted
        """,
        build: () => greetingsBloc,
        act: (bloc) {
          bloc.add(const GetGreetingEvent(name: null));
        },
        expect: () => <GreetingsState>[
          const GreetingsLoadingState(),
          const GreetingsErrorState(message: "Please enter the user's name"),
        ],
      );

      blocTest<GreetingsBloc, GreetingsState>(
        """
        Given an empty string submitted as name
        When greeting event is sent to Bloc
        Then loading state then error state containing message 
          asking for user's name is emitted
        """,
        build: () => greetingsBloc,
        act: (bloc) {
          bloc.add(const GetGreetingEvent(name: ''));
        },
        expect: () => <GreetingsState>[
          const GreetingsLoadingState(),
          const GreetingsErrorState(message: "Please enter the user's name"),
        ],
      );

      // c) Test when provided name contains non - whitespace / letter character
      blocTest<GreetingsBloc, GreetingsState>(
        '''
        Given a name containing character(s) that are not letters or whitespace
          is submitted
        When greeting event is sent to Bloc
        Then loading state then error state containing message 
          asking for letters only is emitted
        ''',
        build: () => greetingsBloc,
        act: (bloc) {
          bloc.add(const GetGreetingEvent(name: '|'));
        },
        expect: () => <GreetingsState>[
          const GreetingsLoadingState(),
          const GreetingsErrorState(message: 'Only letters allowed'),
        ],
      );

      // d) Test when an error that is not [UnexpectedException] occurs
      blocTest<GreetingsBloc, GreetingsState>(
        '''
        Given error that is not `UnexpectedException` is thrown
        When greeting event is sent to Bloc
        Then loading state then error state containing message 
          informing user that error occurred is emitted
        ''',
        build: () => greetingsBloc,
        act: (bloc) {
          bloc.add(const GetGreetingEvent(name: 'hi', throwError: true));
        },
        expect: () => <GreetingsState>[
          const GreetingsErrorState(message: 'Error getting response'),
        ],
      );

      // e) Test when proper name (with only letters & whitespace) is provided
      test(
        r"""
        Given proper name containing only letters and/or whitespace is submitted
        When greeting event is sent to Bloc
        Then completed state containing message saying 'Hello $name'
          or an error state with message of `Unexpected Error` indicating 
            [UnexpectedException] is emitted after loading state
        """,
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

      // f) Test when proper name and mocked random number generator is provided
      blocTest<GreetingsBloc, GreetingsState>(
        '''
        Given mocked random number generator that is stubbed to generate odd number
          within range of 0 and 3
        When greeting event is sent to Bloc
        Then loading state then error state containing 
          message of `Unexpected Error` indicating [UnexpectedException] emitted
        ''',
        build: () => greetingsBloc,
        act: (bloc) {
          // Stub a `nextInt` method to return an odd number before interacting
          when(mockRandom.nextInt(3)).thenReturn(3);

          bloc.add(
            GetGreetingEvent(name: 'hi', randomNumberGenerator: mockRandom),
          );
        },
        wait: const Duration(seconds: 2),
        expect: () => <GreetingsState>[
          const GreetingsLoadingState(),
          const GreetingsErrorState(
            message: 'Unexpected Error has occurred. Try again later',
          ),
        ],
      );

      blocTest<GreetingsBloc, GreetingsState>(
        r"""
        Given mocked random number generator that is stubbed to generate even number
          within range of 0 and 3
        When greeting event is sent to Bloc
        Then loading state then completed state containing message saying 'Hello $name' emitted
        """,
        build: () => greetingsBloc,
        act: (bloc) {
          // Stub a `nextInt` method to return an even number before interacting
          when(mockRandom.nextInt(3)).thenReturn(0);

          bloc.add(
            GetGreetingEvent(
              name: 'WidgetBook',
              randomNumberGenerator: mockRandom,
            ),
          );
        },
        wait: const Duration(seconds: 2),
        expect: () => <GreetingsState>[
          const GreetingsLoadingState(),
          const GreetingsCompletedState(response: 'Hello WidgetBook'),
        ],
      );
    },
  );
}
