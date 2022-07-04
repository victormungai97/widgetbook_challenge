import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:widgetbook_challenge/app.dart';
import 'package:widgetbook_challenge/controllers/controller.dart';

class MockGreetingsController extends Mock implements GreetingsController {}

void main() {
  group('Initial Widget Test', () {
    late GreetingsController greetingsController;

    setUp(() => greetingsController = MockGreetingsController());

    testWidgets('$App contains reminder', (WidgetTester tester) async {
      await tester.pumpWidget(App(greetingsController: greetingsController));

      expect(find.text('Hello Flutter enthusiast!'), findsOneWidget);
    });
  });
}
