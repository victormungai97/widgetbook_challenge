part of 'greetings_bloc.dart';

/// Instead of creating multiple classes to the various states,
/// Use `Unions` from [freezed] package to create clean code
/// with factory constructors representing the various states

@freezed
class GreetingsState with _$GreetingsState {
  /// Factory constructor for initial state
  const factory GreetingsState.initial() = GreetingsInitialState;

  /// Factory constructor for loading state
  const factory GreetingsState.loading() = GreetingsLoadingState;

  /// Factory constructor for loaded state with an expected response
  const factory GreetingsState.completed({String? response}) =
      GreetingsCompletedState;

  /// Factory constructor for error state with error message
  const factory GreetingsState.exception({required String message}) =
      GreetingsErrorState;
}
