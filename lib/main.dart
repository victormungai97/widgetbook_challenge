import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:widgetbook_challenge/app.dart';
import 'package:widgetbook_challenge/blocs/bloc_observer.dart';
import 'package:widgetbook_challenge/config/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  // set up to start up bloc
  BlocOverrides.runZoned(
    () => runApp(const App()),
    // Observe state changes
    blocObserver: SimpleBlocObserver(),
  );
}
