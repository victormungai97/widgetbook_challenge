/// Define tests for the WidgetBook API

import 'dart:math' as math;
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:widgetbook_challenge/api/widgetbook_api.dart';

import 'widgetbook_api_test.mocks.dart';

// Annotation which generates the random.mocks.dart library and MockRandom class
@GenerateMocks([math.Random])
void main() {
  group('WidgetBook API Tests.', () {
    late MockRandom mockRandom;
    late WidgetbookApi widgetbookApi;

    // Instantiate objects to be used in tests
    setUp(() {
      mockRandom = MockRandom();
      widgetbookApi = WidgetbookApi(randomNumberGenerator: mockRandom);
    });

    test(
      '''
        Given random number generator is stubbed to generate an odd number
        When welcomeToWidgetbook is called
        Then `UnexpectedException` is thrown
        ''',
      () {
        // Stub a `nextInt` method to return an odd number before interacting
        when(mockRandom.nextInt(3)).thenReturn(1);
        expect(
          widgetbookApi.welcomeToWidgetbook(message: ''),
          throwsA(isA<UnexpectedException>()),
        );
      },
    );

    test(
      r'''
        Given random number generator is stubbed to generate an even number
        When welcomeToWidgetbook is called
        Then string with greeting `Hello $name` is returned
        ''',
      () async {
        // Stub a `nextInt` method to return an odd number before interacting
        when(mockRandom.nextInt(3)).thenReturn(2);
        expect(
          await widgetbookApi.welcomeToWidgetbook(message: ''),
          isA<String>(),
        );
        expect(
          await widgetbookApi.welcomeToWidgetbook(message: 'WidgetBook'),
          "Hello WidgetBook",
        );
      },
    );
  });
}
