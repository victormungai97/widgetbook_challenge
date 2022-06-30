import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:widgetbook_challenge/controllers/controller.dart';

part 'greetings_bloc.freezed.dart';

part 'greetings_event.dart';

part 'greetings_state.dart';

/// BLoC class that receives actions from user via events and emits
/// resultant data as state after logic like API Calls have been done.
class GreetingsBloc extends Bloc<GreetingsEvent, GreetingsState> {
  /// Constructor for creating instances of [GreetingsBloc]
  GreetingsBloc(this._greetingsController)
      : super(const GreetingsState.initial()) {
    on<GreetingsEvent>((event, emit) async {
      await event.when(
        request: (name, throwError) async {
          try {
            if (throwError) throw Exception('This is an exception in BLoC');
            // Make screen load
            emit(const GreetingsState.loading());
            // make API Call and get response
            final result = await _greetingsController.getGreeting(name: name);
            if (result.toLowerCase().startsWith('hello')) {
              emit(GreetingsState.completed(response: result));
            } else {
              emit(GreetingsState.exception(message: result));
            }
          } on Exception catch (ex, trace) {
            debugPrint('ERROR GETTING greeting:\t$ex\n--\nSTACKTRACE: $trace');
            emit(
              const GreetingsState.exception(message: 'Error getting response'),
            );
          }
        },
      );
    });
  }

  // Get an instance of the controller containing the required logic
  final GreetingsController _greetingsController;
}

/*
BLoC can be used with ``freezed`` package to create clean code
and avoid the boilerplate associated with BLoC by use of `Unions`.
 */
