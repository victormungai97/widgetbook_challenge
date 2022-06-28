import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:widgetbook_challenge/config/injection.config.dart';

/// Instance of [GetIt], service locator in which one would have
/// a central registry where you can register the classes
/// and then obtain an instance of those class.
final locator = GetIt.instance;

/// Returns [GetIt] instance with provided dependencies registered
@InjectableInit()
Future<void> configureDependencies() async => $initGetIt(locator);
