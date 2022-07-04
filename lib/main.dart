import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:widgetbook_challenge/app.dart';
import 'package:widgetbook_challenge/bloc_observer.dart';
import 'package:widgetbook_challenge/controllers/controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // set up to start up bloc
  BlocOverrides.runZoned(
    () => runApp(const App(greetingsController: GreetingsController())),
    // Observe state changes
    blocObserver: SimpleBlocObserver(),
  );
}
