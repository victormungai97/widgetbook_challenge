/// Define tests for the base Controller
import 'package:equatable/equatable.dart';
import 'package:test/test.dart';
import 'package:widgetbook_challenge/controllers/controller.dart';

void main() {
  group(
    'Controller Tests.',
    () {
      late Controller controller;
      setUp(() => controller = const Controller());
      test(
        '''
            When creating a constructor 
            Then Controller instance is returned & is subclass of Equatable
            ''',
        () {
          expect(controller, isNotNull);
          expect(controller, isA<Controller>());
          expect(controller, const TypeMatcher<Equatable>());
        },
      );

      test(
        '''
          Given a controller instance 
          Then overridden Equatable.props method 
            (facilitates value equality based on provided list of variables)
            is empty
          ''',
        () {
          expect(controller.props, isNotNull);
          expect(controller.props, isList);
          expect(controller.props, isEmpty);
        },
      );

      test(
        '''
          Given a controller instance 
          When isStringEmpty is called
          Then the result is a boolean value
          ''',
        () {
          final result = controller.isStringEmpty(null);
          expect(result, isA<bool>());
        },
      );

      test(
        '''
          Given a null string 
          When isStringEmpty is called
          Then the result is True
          ''',
        () {
          final result = controller.isStringEmpty(null);
          expect(result, isTrue);
        },
      );

      test(
        '''
          Given an empty string 
          When isStringEmpty is called
          Then the result is True
          ''',
        () {
          final result = controller.isStringEmpty('');
          expect(result, isTrue);
        },
      );

      test(
        '''
          Given a non-empty string 
          When isStringEmpty is called
          Then the result is False
          ''',
        () {
          final result = controller.isStringEmpty('a');
          expect(result, isFalse);
        },
      );
    },
  );
}
