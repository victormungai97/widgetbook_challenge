part of 'controller.dart';

/// This class shall handle logic with respect to greetings, e.g. API calls

class GreetingsController extends Controller {
  static final _nameRegExp = RegExp(r'[!@#<>?":_`~;[\]\\|=+/)(*&^%0-9-]');

  /// Receive user's name, make API call and get, process & return response
  Future<String> getGreeting({
    required String? name,
    bool throwError = false,
  }) async {
    try {
      if (throwError) throw Exception('This is an exception in controller');
      // 1. Authenticate name
      if (isStringEmpty(name)) return "Please enter the user's name";
      if (_nameRegExp.hasMatch(name!)) return 'Only letters allowed';
      // 2. Make API call
      final result = await WidgetbookApi().welcomeToWidgetbook(message: name);
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
}
