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
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? request,
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
  $Res call({String name});
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
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String name});
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
  }) {
    return _then(_$GetGreetingEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetGreetingEvent
    with DiagnosticableTreeMixin
    implements GetGreetingEvent {
  const _$GetGreetingEvent({required this.name});

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GreetingsEvent.request(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GreetingsEvent.request'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGreetingEvent &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$GetGreetingEventCopyWith<_$GetGreetingEvent> get copyWith =>
      __$$GetGreetingEventCopyWithImpl<_$GetGreetingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) request,
  }) {
    return request(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? request,
  }) {
    return request?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(name);
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
  const factory GetGreetingEvent({required final String name}) =
      _$GetGreetingEvent;

  @override
  String get name => throw _privateConstructorUsedError;
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
    required TResult Function(_GreetingsInitialState value) initial,
    required TResult Function(_GreetingsLoadingState value) loading,
    required TResult Function(_GreetingsCompletedState value) completed,
    required TResult Function(_GreetingsErrorState value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GreetingsInitialState value)? initial,
    TResult Function(_GreetingsLoadingState value)? loading,
    TResult Function(_GreetingsCompletedState value)? completed,
    TResult Function(_GreetingsErrorState value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GreetingsInitialState value)? initial,
    TResult Function(_GreetingsLoadingState value)? loading,
    TResult Function(_GreetingsCompletedState value)? completed,
    TResult Function(_GreetingsErrorState value)? exception,
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
abstract class _$$_GreetingsInitialStateCopyWith<$Res> {
  factory _$$_GreetingsInitialStateCopyWith(_$_GreetingsInitialState value,
          $Res Function(_$_GreetingsInitialState) then) =
      __$$_GreetingsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GreetingsInitialStateCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$_GreetingsInitialStateCopyWith<$Res> {
  __$$_GreetingsInitialStateCopyWithImpl(_$_GreetingsInitialState _value,
      $Res Function(_$_GreetingsInitialState) _then)
      : super(_value, (v) => _then(v as _$_GreetingsInitialState));

  @override
  _$_GreetingsInitialState get _value =>
      super._value as _$_GreetingsInitialState;
}

/// @nodoc

class _$_GreetingsInitialState
    with DiagnosticableTreeMixin
    implements _GreetingsInitialState {
  const _$_GreetingsInitialState();

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
        (other.runtimeType == runtimeType && other is _$_GreetingsInitialState);
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
    required TResult Function(_GreetingsInitialState value) initial,
    required TResult Function(_GreetingsLoadingState value) loading,
    required TResult Function(_GreetingsCompletedState value) completed,
    required TResult Function(_GreetingsErrorState value) exception,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GreetingsInitialState value)? initial,
    TResult Function(_GreetingsLoadingState value)? loading,
    TResult Function(_GreetingsCompletedState value)? completed,
    TResult Function(_GreetingsErrorState value)? exception,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GreetingsInitialState value)? initial,
    TResult Function(_GreetingsLoadingState value)? loading,
    TResult Function(_GreetingsCompletedState value)? completed,
    TResult Function(_GreetingsErrorState value)? exception,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GreetingsInitialState implements GreetingsState {
  const factory _GreetingsInitialState() = _$_GreetingsInitialState;
}

/// @nodoc
abstract class _$$_GreetingsLoadingStateCopyWith<$Res> {
  factory _$$_GreetingsLoadingStateCopyWith(_$_GreetingsLoadingState value,
          $Res Function(_$_GreetingsLoadingState) then) =
      __$$_GreetingsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GreetingsLoadingStateCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$_GreetingsLoadingStateCopyWith<$Res> {
  __$$_GreetingsLoadingStateCopyWithImpl(_$_GreetingsLoadingState _value,
      $Res Function(_$_GreetingsLoadingState) _then)
      : super(_value, (v) => _then(v as _$_GreetingsLoadingState));

  @override
  _$_GreetingsLoadingState get _value =>
      super._value as _$_GreetingsLoadingState;
}

/// @nodoc

class _$_GreetingsLoadingState
    with DiagnosticableTreeMixin
    implements _GreetingsLoadingState {
  const _$_GreetingsLoadingState();

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
        (other.runtimeType == runtimeType && other is _$_GreetingsLoadingState);
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
    required TResult Function(_GreetingsInitialState value) initial,
    required TResult Function(_GreetingsLoadingState value) loading,
    required TResult Function(_GreetingsCompletedState value) completed,
    required TResult Function(_GreetingsErrorState value) exception,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GreetingsInitialState value)? initial,
    TResult Function(_GreetingsLoadingState value)? loading,
    TResult Function(_GreetingsCompletedState value)? completed,
    TResult Function(_GreetingsErrorState value)? exception,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GreetingsInitialState value)? initial,
    TResult Function(_GreetingsLoadingState value)? loading,
    TResult Function(_GreetingsCompletedState value)? completed,
    TResult Function(_GreetingsErrorState value)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GreetingsLoadingState implements GreetingsState {
  const factory _GreetingsLoadingState() = _$_GreetingsLoadingState;
}

/// @nodoc
abstract class _$$_GreetingsCompletedStateCopyWith<$Res> {
  factory _$$_GreetingsCompletedStateCopyWith(_$_GreetingsCompletedState value,
          $Res Function(_$_GreetingsCompletedState) then) =
      __$$_GreetingsCompletedStateCopyWithImpl<$Res>;
  $Res call({String? response});
}

/// @nodoc
class __$$_GreetingsCompletedStateCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$_GreetingsCompletedStateCopyWith<$Res> {
  __$$_GreetingsCompletedStateCopyWithImpl(_$_GreetingsCompletedState _value,
      $Res Function(_$_GreetingsCompletedState) _then)
      : super(_value, (v) => _then(v as _$_GreetingsCompletedState));

  @override
  _$_GreetingsCompletedState get _value =>
      super._value as _$_GreetingsCompletedState;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_GreetingsCompletedState(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GreetingsCompletedState
    with DiagnosticableTreeMixin
    implements _GreetingsCompletedState {
  const _$_GreetingsCompletedState({this.response});

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
            other is _$_GreetingsCompletedState &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$_GreetingsCompletedStateCopyWith<_$_GreetingsCompletedState>
      get copyWith =>
          __$$_GreetingsCompletedStateCopyWithImpl<_$_GreetingsCompletedState>(
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
    required TResult Function(_GreetingsInitialState value) initial,
    required TResult Function(_GreetingsLoadingState value) loading,
    required TResult Function(_GreetingsCompletedState value) completed,
    required TResult Function(_GreetingsErrorState value) exception,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GreetingsInitialState value)? initial,
    TResult Function(_GreetingsLoadingState value)? loading,
    TResult Function(_GreetingsCompletedState value)? completed,
    TResult Function(_GreetingsErrorState value)? exception,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GreetingsInitialState value)? initial,
    TResult Function(_GreetingsLoadingState value)? loading,
    TResult Function(_GreetingsCompletedState value)? completed,
    TResult Function(_GreetingsErrorState value)? exception,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _GreetingsCompletedState implements GreetingsState {
  const factory _GreetingsCompletedState({final String? response}) =
      _$_GreetingsCompletedState;

  String? get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GreetingsCompletedStateCopyWith<_$_GreetingsCompletedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GreetingsErrorStateCopyWith<$Res> {
  factory _$$_GreetingsErrorStateCopyWith(_$_GreetingsErrorState value,
          $Res Function(_$_GreetingsErrorState) then) =
      __$$_GreetingsErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_GreetingsErrorStateCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$_GreetingsErrorStateCopyWith<$Res> {
  __$$_GreetingsErrorStateCopyWithImpl(_$_GreetingsErrorState _value,
      $Res Function(_$_GreetingsErrorState) _then)
      : super(_value, (v) => _then(v as _$_GreetingsErrorState));

  @override
  _$_GreetingsErrorState get _value => super._value as _$_GreetingsErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_GreetingsErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GreetingsErrorState
    with DiagnosticableTreeMixin
    implements _GreetingsErrorState {
  const _$_GreetingsErrorState({required this.message});

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
            other is _$_GreetingsErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_GreetingsErrorStateCopyWith<_$_GreetingsErrorState> get copyWith =>
      __$$_GreetingsErrorStateCopyWithImpl<_$_GreetingsErrorState>(
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
    required TResult Function(_GreetingsInitialState value) initial,
    required TResult Function(_GreetingsLoadingState value) loading,
    required TResult Function(_GreetingsCompletedState value) completed,
    required TResult Function(_GreetingsErrorState value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GreetingsInitialState value)? initial,
    TResult Function(_GreetingsLoadingState value)? loading,
    TResult Function(_GreetingsCompletedState value)? completed,
    TResult Function(_GreetingsErrorState value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GreetingsInitialState value)? initial,
    TResult Function(_GreetingsLoadingState value)? loading,
    TResult Function(_GreetingsCompletedState value)? completed,
    TResult Function(_GreetingsErrorState value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class _GreetingsErrorState implements GreetingsState {
  const factory _GreetingsErrorState({required final String message}) =
      _$_GreetingsErrorState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GreetingsErrorStateCopyWith<_$_GreetingsErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
