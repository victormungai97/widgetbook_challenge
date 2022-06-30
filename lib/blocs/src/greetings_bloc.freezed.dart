// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'greetings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GreetingsEvent {
  String? get name => throw _privateConstructorUsedError;
  bool get throwError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, bool throwError) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, bool throwError)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, bool throwError)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGreetingEvent value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetGreetingEvent value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGreetingEvent value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GreetingsEventCopyWith<GreetingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreetingsEventCopyWith<$Res> {
  factory $GreetingsEventCopyWith(
          GreetingsEvent value, $Res Function(GreetingsEvent) then) =
      _$GreetingsEventCopyWithImpl<$Res>;
  $Res call({String? name, bool throwError});
}

/// @nodoc
class _$GreetingsEventCopyWithImpl<$Res>
    implements $GreetingsEventCopyWith<$Res> {
  _$GreetingsEventCopyWithImpl(this._value, this._then);

  final GreetingsEvent _value;
  // ignore: unused_field
  final $Res Function(GreetingsEvent) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? throwError = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      throwError: throwError == freezed
          ? _value.throwError
          : throwError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$GetGreetingEventCopyWith<$Res>
    implements $GreetingsEventCopyWith<$Res> {
  factory _$$GetGreetingEventCopyWith(
          _$GetGreetingEvent value, $Res Function(_$GetGreetingEvent) then) =
      __$$GetGreetingEventCopyWithImpl<$Res>;
  @override
  $Res call({String? name, bool throwError});
}

/// @nodoc
class __$$GetGreetingEventCopyWithImpl<$Res>
    extends _$GreetingsEventCopyWithImpl<$Res>
    implements _$$GetGreetingEventCopyWith<$Res> {
  __$$GetGreetingEventCopyWithImpl(
      _$GetGreetingEvent _value, $Res Function(_$GetGreetingEvent) _then)
      : super(_value, (v) => _then(v as _$GetGreetingEvent));

  @override
  _$GetGreetingEvent get _value => super._value as _$GetGreetingEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? throwError = freezed,
  }) {
    return _then(_$GetGreetingEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      throwError: throwError == freezed
          ? _value.throwError
          : throwError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetGreetingEvent
    with DiagnosticableTreeMixin
    implements GetGreetingEvent {
  const _$GetGreetingEvent({required this.name, this.throwError = false});

  @override
  final String? name;
  @override
  @JsonKey()
  final bool throwError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GreetingsEvent.request(name: $name, throwError: $throwError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GreetingsEvent.request'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('throwError', throwError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGreetingEvent &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.throwError, throwError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(throwError));

  @JsonKey(ignore: true)
  @override
  _$$GetGreetingEventCopyWith<_$GetGreetingEvent> get copyWith =>
      __$$GetGreetingEventCopyWithImpl<_$GetGreetingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, bool throwError) request,
  }) {
    return request(name, throwError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, bool throwError)? request,
  }) {
    return request?.call(name, throwError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, bool throwError)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(name, throwError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGreetingEvent value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetGreetingEvent value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGreetingEvent value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class GetGreetingEvent implements GreetingsEvent {
  const factory GetGreetingEvent(
      {required final String? name,
      final bool throwError}) = _$GetGreetingEvent;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  bool get throwError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetGreetingEventCopyWith<_$GetGreetingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GreetingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? response) completed,
    required TResult Function(String message) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? response)? completed,
    TResult Function(String message)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? response)? completed,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsInitialState value) initial,
    required TResult Function(GreetingsLoadingState value) loading,
    required TResult Function(GreetingsCompletedState value) completed,
    required TResult Function(GreetingsErrorState value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsInitialState value)? initial,
    TResult Function(GreetingsLoadingState value)? loading,
    TResult Function(GreetingsCompletedState value)? completed,
    TResult Function(GreetingsErrorState value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsInitialState value)? initial,
    TResult Function(GreetingsLoadingState value)? loading,
    TResult Function(GreetingsCompletedState value)? completed,
    TResult Function(GreetingsErrorState value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreetingsStateCopyWith<$Res> {
  factory $GreetingsStateCopyWith(
          GreetingsState value, $Res Function(GreetingsState) then) =
      _$GreetingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GreetingsStateCopyWithImpl<$Res>
    implements $GreetingsStateCopyWith<$Res> {
  _$GreetingsStateCopyWithImpl(this._value, this._then);

  final GreetingsState _value;
  // ignore: unused_field
  final $Res Function(GreetingsState) _then;
}

/// @nodoc
abstract class _$$GreetingsInitialStateCopyWith<$Res> {
  factory _$$GreetingsInitialStateCopyWith(_$GreetingsInitialState value,
          $Res Function(_$GreetingsInitialState) then) =
      __$$GreetingsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GreetingsInitialStateCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$GreetingsInitialStateCopyWith<$Res> {
  __$$GreetingsInitialStateCopyWithImpl(_$GreetingsInitialState _value,
      $Res Function(_$GreetingsInitialState) _then)
      : super(_value, (v) => _then(v as _$GreetingsInitialState));

  @override
  _$GreetingsInitialState get _value => super._value as _$GreetingsInitialState;
}

/// @nodoc

class _$GreetingsInitialState
    with DiagnosticableTreeMixin
    implements GreetingsInitialState {
  const _$GreetingsInitialState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GreetingsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GreetingsState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GreetingsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? response) completed,
    required TResult Function(String message) exception,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? response)? completed,
    TResult Function(String message)? exception,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? response)? completed,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsInitialState value) initial,
    required TResult Function(GreetingsLoadingState value) loading,
    required TResult Function(GreetingsCompletedState value) completed,
    required TResult Function(GreetingsErrorState value) exception,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsInitialState value)? initial,
    TResult Function(GreetingsLoadingState value)? loading,
    TResult Function(GreetingsCompletedState value)? completed,
    TResult Function(GreetingsErrorState value)? exception,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsInitialState value)? initial,
    TResult Function(GreetingsLoadingState value)? loading,
    TResult Function(GreetingsCompletedState value)? completed,
    TResult Function(GreetingsErrorState value)? exception,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GreetingsInitialState implements GreetingsState {
  const factory GreetingsInitialState() = _$GreetingsInitialState;
}

/// @nodoc
abstract class _$$GreetingsLoadingStateCopyWith<$Res> {
  factory _$$GreetingsLoadingStateCopyWith(_$GreetingsLoadingState value,
          $Res Function(_$GreetingsLoadingState) then) =
      __$$GreetingsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GreetingsLoadingStateCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$GreetingsLoadingStateCopyWith<$Res> {
  __$$GreetingsLoadingStateCopyWithImpl(_$GreetingsLoadingState _value,
      $Res Function(_$GreetingsLoadingState) _then)
      : super(_value, (v) => _then(v as _$GreetingsLoadingState));

  @override
  _$GreetingsLoadingState get _value => super._value as _$GreetingsLoadingState;
}

/// @nodoc

class _$GreetingsLoadingState
    with DiagnosticableTreeMixin
    implements GreetingsLoadingState {
  const _$GreetingsLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GreetingsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GreetingsState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GreetingsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? response) completed,
    required TResult Function(String message) exception,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? response)? completed,
    TResult Function(String message)? exception,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? response)? completed,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsInitialState value) initial,
    required TResult Function(GreetingsLoadingState value) loading,
    required TResult Function(GreetingsCompletedState value) completed,
    required TResult Function(GreetingsErrorState value) exception,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsInitialState value)? initial,
    TResult Function(GreetingsLoadingState value)? loading,
    TResult Function(GreetingsCompletedState value)? completed,
    TResult Function(GreetingsErrorState value)? exception,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsInitialState value)? initial,
    TResult Function(GreetingsLoadingState value)? loading,
    TResult Function(GreetingsCompletedState value)? completed,
    TResult Function(GreetingsErrorState value)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GreetingsLoadingState implements GreetingsState {
  const factory GreetingsLoadingState() = _$GreetingsLoadingState;
}

/// @nodoc
abstract class _$$GreetingsCompletedStateCopyWith<$Res> {
  factory _$$GreetingsCompletedStateCopyWith(_$GreetingsCompletedState value,
          $Res Function(_$GreetingsCompletedState) then) =
      __$$GreetingsCompletedStateCopyWithImpl<$Res>;
  $Res call({String? response});
}

/// @nodoc
class __$$GreetingsCompletedStateCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$GreetingsCompletedStateCopyWith<$Res> {
  __$$GreetingsCompletedStateCopyWithImpl(_$GreetingsCompletedState _value,
      $Res Function(_$GreetingsCompletedState) _then)
      : super(_value, (v) => _then(v as _$GreetingsCompletedState));

  @override
  _$GreetingsCompletedState get _value =>
      super._value as _$GreetingsCompletedState;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$GreetingsCompletedState(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GreetingsCompletedState
    with DiagnosticableTreeMixin
    implements GreetingsCompletedState {
  const _$GreetingsCompletedState({this.response});

  @override
  final String? response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GreetingsState.completed(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GreetingsState.completed'))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreetingsCompletedState &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$GreetingsCompletedStateCopyWith<_$GreetingsCompletedState> get copyWith =>
      __$$GreetingsCompletedStateCopyWithImpl<_$GreetingsCompletedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? response) completed,
    required TResult Function(String message) exception,
  }) {
    return completed(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? response)? completed,
    TResult Function(String message)? exception,
  }) {
    return completed?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? response)? completed,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsInitialState value) initial,
    required TResult Function(GreetingsLoadingState value) loading,
    required TResult Function(GreetingsCompletedState value) completed,
    required TResult Function(GreetingsErrorState value) exception,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsInitialState value)? initial,
    TResult Function(GreetingsLoadingState value)? loading,
    TResult Function(GreetingsCompletedState value)? completed,
    TResult Function(GreetingsErrorState value)? exception,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsInitialState value)? initial,
    TResult Function(GreetingsLoadingState value)? loading,
    TResult Function(GreetingsCompletedState value)? completed,
    TResult Function(GreetingsErrorState value)? exception,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class GreetingsCompletedState implements GreetingsState {
  const factory GreetingsCompletedState({final String? response}) =
      _$GreetingsCompletedState;

  String? get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GreetingsCompletedStateCopyWith<_$GreetingsCompletedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GreetingsErrorStateCopyWith<$Res> {
  factory _$$GreetingsErrorStateCopyWith(_$GreetingsErrorState value,
          $Res Function(_$GreetingsErrorState) then) =
      __$$GreetingsErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$GreetingsErrorStateCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$GreetingsErrorStateCopyWith<$Res> {
  __$$GreetingsErrorStateCopyWithImpl(
      _$GreetingsErrorState _value, $Res Function(_$GreetingsErrorState) _then)
      : super(_value, (v) => _then(v as _$GreetingsErrorState));

  @override
  _$GreetingsErrorState get _value => super._value as _$GreetingsErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$GreetingsErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GreetingsErrorState
    with DiagnosticableTreeMixin
    implements GreetingsErrorState {
  const _$GreetingsErrorState({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GreetingsState.exception(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GreetingsState.exception'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreetingsErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$GreetingsErrorStateCopyWith<_$GreetingsErrorState> get copyWith =>
      __$$GreetingsErrorStateCopyWithImpl<_$GreetingsErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? response) completed,
    required TResult Function(String message) exception,
  }) {
    return exception(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? response)? completed,
    TResult Function(String message)? exception,
  }) {
    return exception?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? response)? completed,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsInitialState value) initial,
    required TResult Function(GreetingsLoadingState value) loading,
    required TResult Function(GreetingsCompletedState value) completed,
    required TResult Function(GreetingsErrorState value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsInitialState value)? initial,
    TResult Function(GreetingsLoadingState value)? loading,
    TResult Function(GreetingsCompletedState value)? completed,
    TResult Function(GreetingsErrorState value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsInitialState value)? initial,
    TResult Function(GreetingsLoadingState value)? loading,
    TResult Function(GreetingsCompletedState value)? completed,
    TResult Function(GreetingsErrorState value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class GreetingsErrorState implements GreetingsState {
  const factory GreetingsErrorState({required final String message}) =
      _$GreetingsErrorState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GreetingsErrorStateCopyWith<_$GreetingsErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
