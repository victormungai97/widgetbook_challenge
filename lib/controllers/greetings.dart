import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:widgetbook_challenge/api/widgetbook_api.dart';
import 'package:widgetbook_challenge/controllers/base.dart';

/// This class shall handle logic with respect to greetings, e.g. API calls

class GreetingsController extends Controller {
  /// Constructor
  const GreetingsController({math.Random? randomNumberGenerator})
      : _randomNumberGenerator = randomNumberGenerator;

  static final _nameRegExp = RegExp(r'[!@#<>?":_`~;[\]\\|=+/)(*&^%0-9-]');

  /// Receive user's name, make API call and get, process & return response
  Future<String> requestGreeting({
    required String? name,
    bool throwError = false,
  }) async {
    try {
      if (throwError) throw Exception('This is an exception in controller');
      // 1. Authenticate name
      if (isStringEmpty(name)) return "Please enter the user's name";
      if (_nameRegExp.hasMatch(name!)) return 'Only letters allowed';
      // 2. Make API call
      final result = await WidgetbookApi(
        randomNumberGenerator: _randomNumberGenerator,
      ).welcomeToWidgetbook(message: name);
      // 3. Process response
      if (isStringEmpty(result)) return 'No response received';
      // 4. Return response
      return result;
    } on UnexpectedException catch (err, stackTrace) {
      debugPrint('UNEXPECTED EXCEPTION:\t$err\n---\nSTACKTRACE:\t$stackTrace');
      return 'Unexpected Error has occurred. Try again later';
    } catch (ex, stackTrace) {
      debugPrint('EXCEPTION:\t$ex\n---\nSTACKTRACE:\t$stackTrace');
      return 'Something went wrong. Contact support';
    }
  }

  final math.Random? _randomNumberGenerator;
}
