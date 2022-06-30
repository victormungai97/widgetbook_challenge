part of 'greetings_bloc.dart';

/// For events, instead of defining individual event classes
/// and extending the abstract class,
/// we can create clean code using `Unions` from [freezed] package
/// and the return factory constructors for the various events

@freezed
class GreetingsEvent with _$GreetingsEvent {
  /// Factory constructor getting greeting.
  /// It shall need the user's name which will be passed to the API
  const factory GreetingsEvent.request({
    required String? name,
    @Default(false) bool throwError,
  }) = GetGreetingEvent;
}
