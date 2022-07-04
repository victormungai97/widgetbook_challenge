part of 'greetings_bloc.dart';

/// Instead of creating multiple classes to the various states,
/// Use `Unions` from [freezed] package to create clean code
/// with factory constructors representing the various states

@freezed
class GreetingsState with _$GreetingsState {
  /// Factory constructor for initial state
  const factory GreetingsState.initial() = GreetingsInitial;

  /// Factory constructor for loading state
  const factory GreetingsState.load() = GreetingsRequestInProgress;

  /// Factory constructor for completed state with an expected response
  const factory GreetingsState.success({String? response}) =
      GreetingsRequestSuccess;

  /// Factory constructor for error state with error message
  const factory GreetingsState.failure({required String message}) =
      GreetingsRequestFailure;

  /// Factory constructor for resetting state
  const factory GreetingsState.reset() = GreetingsRequestReset;
}
