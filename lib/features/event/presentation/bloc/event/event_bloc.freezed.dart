// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(EventEntity event) createEventPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(EventEntity event)? createEventPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(EventEntity event)? createEventPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreateEventPressed value) createEventPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreateEventPressed value)? createEventPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreateEventPressed value)? createEventPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEventCopyWith<$Res> {
  factory $EventEventCopyWith(
          EventEvent value, $Res Function(EventEvent) then) =
      _$EventEventCopyWithImpl<$Res, EventEvent>;
}

/// @nodoc
class _$EventEventCopyWithImpl<$Res, $Val extends EventEvent>
    implements $EventEventCopyWith<$Res> {
  _$EventEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EventEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(EventEntity event) createEventPressed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(EventEntity event)? createEventPressed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(EventEntity event)? createEventPressed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreateEventPressed value) createEventPressed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreateEventPressed value)? createEventPressed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreateEventPressed value)? createEventPressed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EventEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CreateEventPressedImplCopyWith<$Res> {
  factory _$$CreateEventPressedImplCopyWith(_$CreateEventPressedImpl value,
          $Res Function(_$CreateEventPressedImpl) then) =
      __$$CreateEventPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventEntity event});

  $EventEntityCopyWith<$Res> get event;
}

/// @nodoc
class __$$CreateEventPressedImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$CreateEventPressedImpl>
    implements _$$CreateEventPressedImplCopyWith<$Res> {
  __$$CreateEventPressedImplCopyWithImpl(_$CreateEventPressedImpl _value,
      $Res Function(_$CreateEventPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$CreateEventPressedImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventEntityCopyWith<$Res> get event {
    return $EventEntityCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$CreateEventPressedImpl implements _CreateEventPressed {
  const _$CreateEventPressedImpl({required this.event});

  @override
  final EventEntity event;

  @override
  String toString() {
    return 'EventEvent.createEventPressed(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEventPressedImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEventPressedImplCopyWith<_$CreateEventPressedImpl> get copyWith =>
      __$$CreateEventPressedImplCopyWithImpl<_$CreateEventPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(EventEntity event) createEventPressed,
  }) {
    return createEventPressed(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(EventEntity event)? createEventPressed,
  }) {
    return createEventPressed?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(EventEntity event)? createEventPressed,
    required TResult orElse(),
  }) {
    if (createEventPressed != null) {
      return createEventPressed(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreateEventPressed value) createEventPressed,
  }) {
    return createEventPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreateEventPressed value)? createEventPressed,
  }) {
    return createEventPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreateEventPressed value)? createEventPressed,
    required TResult orElse(),
  }) {
    if (createEventPressed != null) {
      return createEventPressed(this);
    }
    return orElse();
  }
}

abstract class _CreateEventPressed implements EventEvent {
  const factory _CreateEventPressed({required final EventEntity event}) =
      _$CreateEventPressedImpl;

  EventEntity get event;
  @JsonKey(ignore: true)
  _$$CreateEventPressedImplCopyWith<_$CreateEventPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ValueFailure<String>, Set<Set<void>>>> get failureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventStateCopyWith<EventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventStateCopyWith<$Res> {
  factory $EventStateCopyWith(
          EventState value, $Res Function(EventState) then) =
      _$EventStateCopyWithImpl<$Res, EventState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ValueFailure<String>, Set<Set<void>>>> failureOrSuccess,
      bool isLoaded});
}

/// @nodoc
class _$EventStateCopyWithImpl<$Res, $Val extends EventState>
    implements $EventStateCopyWith<$Res> {
  _$EventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccess = null,
    Object? isLoaded = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure<String>, Set<Set<void>>>>,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventStateImplCopyWith<$Res>
    implements $EventStateCopyWith<$Res> {
  factory _$$EventStateImplCopyWith(
          _$EventStateImpl value, $Res Function(_$EventStateImpl) then) =
      __$$EventStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ValueFailure<String>, Set<Set<void>>>> failureOrSuccess,
      bool isLoaded});
}

/// @nodoc
class __$$EventStateImplCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventStateImpl>
    implements _$$EventStateImplCopyWith<$Res> {
  __$$EventStateImplCopyWithImpl(
      _$EventStateImpl _value, $Res Function(_$EventStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccess = null,
    Object? isLoaded = null,
  }) {
    return _then(_$EventStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure<String>, Set<Set<void>>>>,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EventStateImpl extends _EventState {
  const _$EventStateImpl(
      {required this.isLoading,
      required this.failureOrSuccess,
      required this.isLoaded})
      : super._();

  @override
  final bool isLoading;
  @override
  final Option<Either<ValueFailure<String>, Set<Set<void>>>> failureOrSuccess;
  @override
  final bool isLoaded;

  @override
  String toString() {
    return 'EventState(isLoading: $isLoading, failureOrSuccess: $failureOrSuccess, isLoaded: $isLoaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, failureOrSuccess, isLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventStateImplCopyWith<_$EventStateImpl> get copyWith =>
      __$$EventStateImplCopyWithImpl<_$EventStateImpl>(this, _$identity);
}

abstract class _EventState extends EventState {
  const factory _EventState(
      {required final bool isLoading,
      required final Option<Either<ValueFailure<String>, Set<Set<void>>>>
          failureOrSuccess,
      required final bool isLoaded}) = _$EventStateImpl;
  const _EventState._() : super._();

  @override
  bool get isLoading;
  @override
  Option<Either<ValueFailure<String>, Set<Set<void>>>> get failureOrSuccess;
  @override
  bool get isLoaded;
  @override
  @JsonKey(ignore: true)
  _$$EventStateImplCopyWith<_$EventStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
