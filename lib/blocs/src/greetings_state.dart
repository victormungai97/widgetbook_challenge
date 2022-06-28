part of 'greetings_bloc.dart';

/// Instead of creating multiple classes to the various states,
/// Use `Unions` from [freezed] package to create clean code
/// with factory constructors representing the various states

@freezed
class GreetingsState with _$GreetingsState {
  /// Factory constructor for initial state
  const factory GreetingsState.initial() = _GreetingsInitialState;

  /// Factory constructor for loading state
  const factory GreetingsState.loading() = _GreetingsLoadingState;

  /// Factory constructor for completed state with an expected response
  const factory GreetingsState.completed({String? response}) =
      _GreetingsCompletedState;

  /// Factory constructor for error state with error message
  const factory GreetingsState.exception({required String message}) =
      _GreetingsErrorState;
}
