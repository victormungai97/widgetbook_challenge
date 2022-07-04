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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, bool throwError) requested,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, bool throwError)? requested,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, bool throwError)? requested,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsRequested value) requested,
    required TResult Function(GreetingsScreenReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsRequested value)? requested,
    TResult Function(GreetingsScreenReset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsRequested value)? requested,
    TResult Function(GreetingsScreenReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreetingsEventCopyWith<$Res> {
  factory $GreetingsEventCopyWith(
          GreetingsEvent value, $Res Function(GreetingsEvent) then) =
      _$GreetingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GreetingsEventCopyWithImpl<$Res>
    implements $GreetingsEventCopyWith<$Res> {
  _$GreetingsEventCopyWithImpl(this._value, this._then);

  final GreetingsEvent _value;
  // ignore: unused_field
  final $Res Function(GreetingsEvent) _then;
}

/// @nodoc
abstract class _$$GreetingsRequestedCopyWith<$Res> {
  factory _$$GreetingsRequestedCopyWith(_$GreetingsRequested value,
          $Res Function(_$GreetingsRequested) then) =
      __$$GreetingsRequestedCopyWithImpl<$Res>;
  $Res call({String? name, bool throwError});
}

/// @nodoc
class __$$GreetingsRequestedCopyWithImpl<$Res>
    extends _$GreetingsEventCopyWithImpl<$Res>
    implements _$$GreetingsRequestedCopyWith<$Res> {
  __$$GreetingsRequestedCopyWithImpl(
      _$GreetingsRequested _value, $Res Function(_$GreetingsRequested) _then)
      : super(_value, (v) => _then(v as _$GreetingsRequested));

  @override
  _$GreetingsRequested get _value => super._value as _$GreetingsRequested;

  @override
  $Res call({
    Object? name = freezed,
    Object? throwError = freezed,
  }) {
    return _then(_$GreetingsRequested(
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

class _$GreetingsRequested
    with DiagnosticableTreeMixin
    implements GreetingsRequested {
  const _$GreetingsRequested({required this.name, this.throwError = false});

  @override
  final String? name;
  @override
  @JsonKey()
  final bool throwError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GreetingsEvent.requested(name: $name, throwError: $throwError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GreetingsEvent.requested'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('throwError', throwError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreetingsRequested &&
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
  _$$GreetingsRequestedCopyWith<_$GreetingsRequested> get copyWith =>
      __$$GreetingsRequestedCopyWithImpl<_$GreetingsRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, bool throwError) requested,
    required TResult Function() reset,
  }) {
    return requested(name, throwError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, bool throwError)? requested,
    TResult Function()? reset,
  }) {
    return requested?.call(name, throwError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, bool throwError)? requested,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(name, throwError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsRequested value) requested,
    required TResult Function(GreetingsScreenReset value) reset,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsRequested value)? requested,
    TResult Function(GreetingsScreenReset value)? reset,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsRequested value)? requested,
    TResult Function(GreetingsScreenReset value)? reset,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class GreetingsRequested implements GreetingsEvent {
  const factory GreetingsRequested(
      {required final String? name,
      final bool throwError}) = _$GreetingsRequested;

  String? get name => throw _privateConstructorUsedError;
  bool get throwError => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GreetingsRequestedCopyWith<_$GreetingsRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GreetingsScreenResetCopyWith<$Res> {
  factory _$$GreetingsScreenResetCopyWith(_$GreetingsScreenReset value,
          $Res Function(_$GreetingsScreenReset) then) =
      __$$GreetingsScreenResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GreetingsScreenResetCopyWithImpl<$Res>
    extends _$GreetingsEventCopyWithImpl<$Res>
    implements _$$GreetingsScreenResetCopyWith<$Res> {
  __$$GreetingsScreenResetCopyWithImpl(_$GreetingsScreenReset _value,
      $Res Function(_$GreetingsScreenReset) _then)
      : super(_value, (v) => _then(v as _$GreetingsScreenReset));

  @override
  _$GreetingsScreenReset get _value => super._value as _$GreetingsScreenReset;
}

/// @nodoc

class _$GreetingsScreenReset
    with DiagnosticableTreeMixin
    implements GreetingsScreenReset {
  const _$GreetingsScreenReset();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GreetingsEvent.reset()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GreetingsEvent.reset'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GreetingsScreenReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, bool throwError) requested,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, bool throwError)? requested,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, bool throwError)? requested,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsRequested value) requested,
    required TResult Function(GreetingsScreenReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsRequested value)? requested,
    TResult Function(GreetingsScreenReset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsRequested value)? requested,
    TResult Function(GreetingsScreenReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class GreetingsScreenReset implements GreetingsEvent {
  const factory GreetingsScreenReset() = _$GreetingsScreenReset;
}

/// @nodoc
mixin _$GreetingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(String? response) success,
    required TResult Function(String message) failure,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(String? response)? success,
    TResult Function(String message)? failure,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(String? response)? success,
    TResult Function(String message)? failure,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsInitial value) initial,
    required TResult Function(GreetingsRequestInProgress value) load,
    required TResult Function(GreetingsRequestSuccess value) success,
    required TResult Function(GreetingsRequestFailure value) failure,
    required TResult Function(GreetingsRequestReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsInitial value)? initial,
    TResult Function(GreetingsRequestInProgress value)? load,
    TResult Function(GreetingsRequestSuccess value)? success,
    TResult Function(GreetingsRequestFailure value)? failure,
    TResult Function(GreetingsRequestReset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsInitial value)? initial,
    TResult Function(GreetingsRequestInProgress value)? load,
    TResult Function(GreetingsRequestSuccess value)? success,
    TResult Function(GreetingsRequestFailure value)? failure,
    TResult Function(GreetingsRequestReset value)? reset,
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
abstract class _$$GreetingsInitialCopyWith<$Res> {
  factory _$$GreetingsInitialCopyWith(
          _$GreetingsInitial value, $Res Function(_$GreetingsInitial) then) =
      __$$GreetingsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GreetingsInitialCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$GreetingsInitialCopyWith<$Res> {
  __$$GreetingsInitialCopyWithImpl(
      _$GreetingsInitial _value, $Res Function(_$GreetingsInitial) _then)
      : super(_value, (v) => _then(v as _$GreetingsInitial));

  @override
  _$GreetingsInitial get _value => super._value as _$GreetingsInitial;
}

/// @nodoc

class _$GreetingsInitial
    with DiagnosticableTreeMixin
    implements GreetingsInitial {
  const _$GreetingsInitial();

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
        (other.runtimeType == runtimeType && other is _$GreetingsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(String? response) success,
    required TResult Function(String message) failure,
    required TResult Function() reset,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(String? response)? success,
    TResult Function(String message)? failure,
    TResult Function()? reset,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(String? response)? success,
    TResult Function(String message)? failure,
    TResult Function()? reset,
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
    required TResult Function(GreetingsInitial value) initial,
    required TResult Function(GreetingsRequestInProgress value) load,
    required TResult Function(GreetingsRequestSuccess value) success,
    required TResult Function(GreetingsRequestFailure value) failure,
    required TResult Function(GreetingsRequestReset value) reset,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsInitial value)? initial,
    TResult Function(GreetingsRequestInProgress value)? load,
    TResult Function(GreetingsRequestSuccess value)? success,
    TResult Function(GreetingsRequestFailure value)? failure,
    TResult Function(GreetingsRequestReset value)? reset,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsInitial value)? initial,
    TResult Function(GreetingsRequestInProgress value)? load,
    TResult Function(GreetingsRequestSuccess value)? success,
    TResult Function(GreetingsRequestFailure value)? failure,
    TResult Function(GreetingsRequestReset value)? reset,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GreetingsInitial implements GreetingsState {
  const factory GreetingsInitial() = _$GreetingsInitial;
}

/// @nodoc
abstract class _$$GreetingsRequestInProgressCopyWith<$Res> {
  factory _$$GreetingsRequestInProgressCopyWith(
          _$GreetingsRequestInProgress value,
          $Res Function(_$GreetingsRequestInProgress) then) =
      __$$GreetingsRequestInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GreetingsRequestInProgressCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$GreetingsRequestInProgressCopyWith<$Res> {
  __$$GreetingsRequestInProgressCopyWithImpl(
      _$GreetingsRequestInProgress _value,
      $Res Function(_$GreetingsRequestInProgress) _then)
      : super(_value, (v) => _then(v as _$GreetingsRequestInProgress));

  @override
  _$GreetingsRequestInProgress get _value =>
      super._value as _$GreetingsRequestInProgress;
}

/// @nodoc

class _$GreetingsRequestInProgress
    with DiagnosticableTreeMixin
    implements GreetingsRequestInProgress {
  const _$GreetingsRequestInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GreetingsState.load()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GreetingsState.load'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreetingsRequestInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(String? response) success,
    required TResult Function(String message) failure,
    required TResult Function() reset,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(String? response)? success,
    TResult Function(String message)? failure,
    TResult Function()? reset,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(String? response)? success,
    TResult Function(String message)? failure,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsInitial value) initial,
    required TResult Function(GreetingsRequestInProgress value) load,
    required TResult Function(GreetingsRequestSuccess value) success,
    required TResult Function(GreetingsRequestFailure value) failure,
    required TResult Function(GreetingsRequestReset value) reset,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsInitial value)? initial,
    TResult Function(GreetingsRequestInProgress value)? load,
    TResult Function(GreetingsRequestSuccess value)? success,
    TResult Function(GreetingsRequestFailure value)? failure,
    TResult Function(GreetingsRequestReset value)? reset,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsInitial value)? initial,
    TResult Function(GreetingsRequestInProgress value)? load,
    TResult Function(GreetingsRequestSuccess value)? success,
    TResult Function(GreetingsRequestFailure value)? failure,
    TResult Function(GreetingsRequestReset value)? reset,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class GreetingsRequestInProgress implements GreetingsState {
  const factory GreetingsRequestInProgress() = _$GreetingsRequestInProgress;
}

/// @nodoc
abstract class _$$GreetingsRequestSuccessCopyWith<$Res> {
  factory _$$GreetingsRequestSuccessCopyWith(_$GreetingsRequestSuccess value,
          $Res Function(_$GreetingsRequestSuccess) then) =
      __$$GreetingsRequestSuccessCopyWithImpl<$Res>;
  $Res call({String? response});
}

/// @nodoc
class __$$GreetingsRequestSuccessCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$GreetingsRequestSuccessCopyWith<$Res> {
  __$$GreetingsRequestSuccessCopyWithImpl(_$GreetingsRequestSuccess _value,
      $Res Function(_$GreetingsRequestSuccess) _then)
      : super(_value, (v) => _then(v as _$GreetingsRequestSuccess));

  @override
  _$GreetingsRequestSuccess get _value =>
      super._value as _$GreetingsRequestSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$GreetingsRequestSuccess(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GreetingsRequestSuccess
    with DiagnosticableTreeMixin
    implements GreetingsRequestSuccess {
  const _$GreetingsRequestSuccess({this.response});

  @override
  final String? response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GreetingsState.success(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GreetingsState.success'))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreetingsRequestSuccess &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$GreetingsRequestSuccessCopyWith<_$GreetingsRequestSuccess> get copyWith =>
      __$$GreetingsRequestSuccessCopyWithImpl<_$GreetingsRequestSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(String? response) success,
    required TResult Function(String message) failure,
    required TResult Function() reset,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(String? response)? success,
    TResult Function(String message)? failure,
    TResult Function()? reset,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(String? response)? success,
    TResult Function(String message)? failure,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsInitial value) initial,
    required TResult Function(GreetingsRequestInProgress value) load,
    required TResult Function(GreetingsRequestSuccess value) success,
    required TResult Function(GreetingsRequestFailure value) failure,
    required TResult Function(GreetingsRequestReset value) reset,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsInitial value)? initial,
    TResult Function(GreetingsRequestInProgress value)? load,
    TResult Function(GreetingsRequestSuccess value)? success,
    TResult Function(GreetingsRequestFailure value)? failure,
    TResult Function(GreetingsRequestReset value)? reset,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsInitial value)? initial,
    TResult Function(GreetingsRequestInProgress value)? load,
    TResult Function(GreetingsRequestSuccess value)? success,
    TResult Function(GreetingsRequestFailure value)? failure,
    TResult Function(GreetingsRequestReset value)? reset,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GreetingsRequestSuccess implements GreetingsState {
  const factory GreetingsRequestSuccess({final String? response}) =
      _$GreetingsRequestSuccess;

  String? get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GreetingsRequestSuccessCopyWith<_$GreetingsRequestSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GreetingsRequestFailureCopyWith<$Res> {
  factory _$$GreetingsRequestFailureCopyWith(_$GreetingsRequestFailure value,
          $Res Function(_$GreetingsRequestFailure) then) =
      __$$GreetingsRequestFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$GreetingsRequestFailureCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$GreetingsRequestFailureCopyWith<$Res> {
  __$$GreetingsRequestFailureCopyWithImpl(_$GreetingsRequestFailure _value,
      $Res Function(_$GreetingsRequestFailure) _then)
      : super(_value, (v) => _then(v as _$GreetingsRequestFailure));

  @override
  _$GreetingsRequestFailure get _value =>
      super._value as _$GreetingsRequestFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$GreetingsRequestFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GreetingsRequestFailure
    with DiagnosticableTreeMixin
    implements GreetingsRequestFailure {
  const _$GreetingsRequestFailure({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GreetingsState.failure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GreetingsState.failure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreetingsRequestFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$GreetingsRequestFailureCopyWith<_$GreetingsRequestFailure> get copyWith =>
      __$$GreetingsRequestFailureCopyWithImpl<_$GreetingsRequestFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(String? response) success,
    required TResult Function(String message) failure,
    required TResult Function() reset,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(String? response)? success,
    TResult Function(String message)? failure,
    TResult Function()? reset,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(String? response)? success,
    TResult Function(String message)? failure,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsInitial value) initial,
    required TResult Function(GreetingsRequestInProgress value) load,
    required TResult Function(GreetingsRequestSuccess value) success,
    required TResult Function(GreetingsRequestFailure value) failure,
    required TResult Function(GreetingsRequestReset value) reset,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsInitial value)? initial,
    TResult Function(GreetingsRequestInProgress value)? load,
    TResult Function(GreetingsRequestSuccess value)? success,
    TResult Function(GreetingsRequestFailure value)? failure,
    TResult Function(GreetingsRequestReset value)? reset,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsInitial value)? initial,
    TResult Function(GreetingsRequestInProgress value)? load,
    TResult Function(GreetingsRequestSuccess value)? success,
    TResult Function(GreetingsRequestFailure value)? failure,
    TResult Function(GreetingsRequestReset value)? reset,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class GreetingsRequestFailure implements GreetingsState {
  const factory GreetingsRequestFailure({required final String message}) =
      _$GreetingsRequestFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GreetingsRequestFailureCopyWith<_$GreetingsRequestFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GreetingsRequestResetCopyWith<$Res> {
  factory _$$GreetingsRequestResetCopyWith(_$GreetingsRequestReset value,
          $Res Function(_$GreetingsRequestReset) then) =
      __$$GreetingsRequestResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GreetingsRequestResetCopyWithImpl<$Res>
    extends _$GreetingsStateCopyWithImpl<$Res>
    implements _$$GreetingsRequestResetCopyWith<$Res> {
  __$$GreetingsRequestResetCopyWithImpl(_$GreetingsRequestReset _value,
      $Res Function(_$GreetingsRequestReset) _then)
      : super(_value, (v) => _then(v as _$GreetingsRequestReset));

  @override
  _$GreetingsRequestReset get _value => super._value as _$GreetingsRequestReset;
}

/// @nodoc

class _$GreetingsRequestReset
    with DiagnosticableTreeMixin
    implements GreetingsRequestReset {
  const _$GreetingsRequestReset();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GreetingsState.reset()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GreetingsState.reset'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GreetingsRequestReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(String? response) success,
    required TResult Function(String message) failure,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(String? response)? success,
    TResult Function(String message)? failure,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(String? response)? success,
    TResult Function(String message)? failure,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GreetingsInitial value) initial,
    required TResult Function(GreetingsRequestInProgress value) load,
    required TResult Function(GreetingsRequestSuccess value) success,
    required TResult Function(GreetingsRequestFailure value) failure,
    required TResult Function(GreetingsRequestReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GreetingsInitial value)? initial,
    TResult Function(GreetingsRequestInProgress value)? load,
    TResult Function(GreetingsRequestSuccess value)? success,
    TResult Function(GreetingsRequestFailure value)? failure,
    TResult Function(GreetingsRequestReset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GreetingsInitial value)? initial,
    TResult Function(GreetingsRequestInProgress value)? load,
    TResult Function(GreetingsRequestSuccess value)? success,
    TResult Function(GreetingsRequestFailure value)? failure,
    TResult Function(GreetingsRequestReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class GreetingsRequestReset implements GreetingsState {
  const factory GreetingsRequestReset() = _$GreetingsRequestReset;
}
