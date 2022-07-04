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

      late math.Random mockRandom;

      late GreetingsBloc unMockedBloc;

      // Instantiate objects to be used in tests
      setUp(() {
        mockRandom = MockRandom();

        greetingsController = GreetingsController(
          randomNumberGenerator: mockRandom,
        );

        greetingsBloc = GreetingsBloc(greetingsController);

        unMockedBloc = GreetingsBloc(const GreetingsController());
      });

      // Close, dispose e.t.c objects once tests have completed
      tearDown(() {
        greetingsBloc.close();
        unMockedBloc.close();
      });

      // a) Test to ensure initial state
      test(
        'The initial state of GreetingsBloc is GreetingsInitial',
        () {
          expect(greetingsBloc.state, const GreetingsInitial());
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
          bloc.add(const GreetingsRequested(name: null));
        },
        expect: () => <GreetingsState>[
          const GreetingsRequestInProgress(),
          const GreetingsRequestFailure(
            message: "Please enter the user's name",
          ),
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
          bloc.add(const GreetingsRequested(name: ''));
        },
        expect: () => <GreetingsState>[
          const GreetingsRequestInProgress(),
          const GreetingsRequestFailure(
            message: "Please enter the user's name",
          ),
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
          bloc.add(const GreetingsRequested(name: '|'));
        },
        expect: () => <GreetingsState>[
          const GreetingsRequestInProgress(),
          const GreetingsRequestFailure(message: 'Only letters allowed'),
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
          bloc.add(const GreetingsRequested(name: 'hi', throwError: true));
        },
        expect: () => <GreetingsState>[
          const GreetingsRequestFailure(message: 'Error getting response'),
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
          unMockedBloc.add(const GreetingsRequested(name: 'WidgetBook'));
          // skip loading State then return the next state
          final firstStateEmitted = await unMockedBloc.stream.skip(1).first;
          expect(
            firstStateEmitted,
            isIn(
              <GreetingsState>[
                const GreetingsRequestFailure(
                  message: 'Unexpected Error has occurred. Try again later',
                ),
                const GreetingsRequestSuccess(response: 'Hello WidgetBook'),
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

          bloc.add(const GreetingsRequested(name: 'hi'));
        },
        wait: const Duration(seconds: 2),
        expect: () => <GreetingsState>[
          const GreetingsRequestInProgress(),
          const GreetingsRequestFailure(
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

          bloc.add(const GreetingsRequested(name: 'WidgetBook'));
        },
        wait: const Duration(seconds: 2),
        expect: () => <GreetingsState>[
          const GreetingsRequestInProgress(),
          const GreetingsRequestSuccess(response: 'Hello WidgetBook'),
        ],
      );

      blocTest<GreetingsBloc, GreetingsState>(
        '''
        When greeting screen is sent to Bloc
        Then loading state then initial state is emitted to return screen to 
          original state
        ''',
        build: () => greetingsBloc,
        act: (bloc) {
          bloc.add(const GreetingsScreenReset());
        },
        wait: const Duration(seconds: 2),
        expect: () => <GreetingsState>[
          const GreetingsRequestInProgress(),
          const GreetingsRequestReset(),
        ],
      );
    },
  );
}
