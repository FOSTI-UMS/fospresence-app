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
    required TResult Function() getEvents,
    required TResult Function(EventEntity event) createEventPressed,
    required TResult Function(EventEntity event) deleteEventPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(EventEntity event)? createEventPressed,
    TResult? Function(EventEntity event)? deleteEventPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(EventEntity event)? createEventPressed,
    TResult Function(EventEntity event)? deleteEventPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_CreateEventPressed value) createEventPressed,
    required TResult Function(_DeteleEventPressed value) deleteEventPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_CreateEventPressed value)? createEventPressed,
    TResult? Function(_DeteleEventPressed value)? deleteEventPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_CreateEventPressed value)? createEventPressed,
    TResult Function(_DeteleEventPressed value)? deleteEventPressed,
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
abstract class _$$GetEventsImplCopyWith<$Res> {
  factory _$$GetEventsImplCopyWith(
          _$GetEventsImpl value, $Res Function(_$GetEventsImpl) then) =
      __$$GetEventsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEventsImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$GetEventsImpl>
    implements _$$GetEventsImplCopyWith<$Res> {
  __$$GetEventsImplCopyWithImpl(
      _$GetEventsImpl _value, $Res Function(_$GetEventsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEventsImpl implements _GetEvents {
  const _$GetEventsImpl();

  @override
  String toString() {
    return 'EventEvent.getEvents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEventsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(EventEntity event) createEventPressed,
    required TResult Function(EventEntity event) deleteEventPressed,
  }) {
    return getEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(EventEntity event)? createEventPressed,
    TResult? Function(EventEntity event)? deleteEventPressed,
  }) {
    return getEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(EventEntity event)? createEventPressed,
    TResult Function(EventEntity event)? deleteEventPressed,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_CreateEventPressed value) createEventPressed,
    required TResult Function(_DeteleEventPressed value) deleteEventPressed,
  }) {
    return getEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_CreateEventPressed value)? createEventPressed,
    TResult? Function(_DeteleEventPressed value)? deleteEventPressed,
  }) {
    return getEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_CreateEventPressed value)? createEventPressed,
    TResult Function(_DeteleEventPressed value)? deleteEventPressed,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(this);
    }
    return orElse();
  }
}

abstract class _GetEvents implements EventEvent {
  const factory _GetEvents() = _$GetEventsImpl;
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
    required TResult Function() getEvents,
    required TResult Function(EventEntity event) createEventPressed,
    required TResult Function(EventEntity event) deleteEventPressed,
  }) {
    return createEventPressed(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(EventEntity event)? createEventPressed,
    TResult? Function(EventEntity event)? deleteEventPressed,
  }) {
    return createEventPressed?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(EventEntity event)? createEventPressed,
    TResult Function(EventEntity event)? deleteEventPressed,
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
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_CreateEventPressed value) createEventPressed,
    required TResult Function(_DeteleEventPressed value) deleteEventPressed,
  }) {
    return createEventPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_CreateEventPressed value)? createEventPressed,
    TResult? Function(_DeteleEventPressed value)? deleteEventPressed,
  }) {
    return createEventPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_CreateEventPressed value)? createEventPressed,
    TResult Function(_DeteleEventPressed value)? deleteEventPressed,
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
abstract class _$$DeteleEventPressedImplCopyWith<$Res> {
  factory _$$DeteleEventPressedImplCopyWith(_$DeteleEventPressedImpl value,
          $Res Function(_$DeteleEventPressedImpl) then) =
      __$$DeteleEventPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventEntity event});

  $EventEntityCopyWith<$Res> get event;
}

/// @nodoc
class __$$DeteleEventPressedImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$DeteleEventPressedImpl>
    implements _$$DeteleEventPressedImplCopyWith<$Res> {
  __$$DeteleEventPressedImplCopyWithImpl(_$DeteleEventPressedImpl _value,
      $Res Function(_$DeteleEventPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$DeteleEventPressedImpl(
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

class _$DeteleEventPressedImpl implements _DeteleEventPressed {
  const _$DeteleEventPressedImpl({required this.event});

  @override
  final EventEntity event;

  @override
  String toString() {
    return 'EventEvent.deleteEventPressed(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeteleEventPressedImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeteleEventPressedImplCopyWith<_$DeteleEventPressedImpl> get copyWith =>
      __$$DeteleEventPressedImplCopyWithImpl<_$DeteleEventPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(EventEntity event) createEventPressed,
    required TResult Function(EventEntity event) deleteEventPressed,
  }) {
    return deleteEventPressed(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(EventEntity event)? createEventPressed,
    TResult? Function(EventEntity event)? deleteEventPressed,
  }) {
    return deleteEventPressed?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(EventEntity event)? createEventPressed,
    TResult Function(EventEntity event)? deleteEventPressed,
    required TResult orElse(),
  }) {
    if (deleteEventPressed != null) {
      return deleteEventPressed(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_CreateEventPressed value) createEventPressed,
    required TResult Function(_DeteleEventPressed value) deleteEventPressed,
  }) {
    return deleteEventPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_CreateEventPressed value)? createEventPressed,
    TResult? Function(_DeteleEventPressed value)? deleteEventPressed,
  }) {
    return deleteEventPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_CreateEventPressed value)? createEventPressed,
    TResult Function(_DeteleEventPressed value)? deleteEventPressed,
    required TResult orElse(),
  }) {
    if (deleteEventPressed != null) {
      return deleteEventPressed(this);
    }
    return orElse();
  }
}

abstract class _DeteleEventPressed implements EventEvent {
  const factory _DeteleEventPressed({required final EventEntity event}) =
      _$DeteleEventPressedImpl;

  EventEntity get event;
  @JsonKey(ignore: true)
  _$$DeteleEventPressedImplCopyWith<_$DeteleEventPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ValueFailure<String>, dynamic>> get failureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<ValueFailure<String>, List<EventEntity>>> get eventList =>
      throw _privateConstructorUsedError;

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
      Option<Either<ValueFailure<String>, dynamic>> failureOrSuccess,
      Option<Either<ValueFailure<String>, List<EventEntity>>> eventList});
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
    Object? eventList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure<String>, dynamic>>,
      eventList: null == eventList
          ? _value.eventList
          : eventList // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure<String>, List<EventEntity>>>,
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
      Option<Either<ValueFailure<String>, dynamic>> failureOrSuccess,
      Option<Either<ValueFailure<String>, List<EventEntity>>> eventList});
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
    Object? eventList = null,
  }) {
    return _then(_$EventStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure<String>, dynamic>>,
      eventList: null == eventList
          ? _value.eventList
          : eventList // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure<String>, List<EventEntity>>>,
    ));
  }
}

/// @nodoc

class _$EventStateImpl extends _EventState {
  const _$EventStateImpl(
      {required this.isLoading,
      required this.failureOrSuccess,
      required this.eventList})
      : super._();

  @override
  final bool isLoading;
  @override
  final Option<Either<ValueFailure<String>, dynamic>> failureOrSuccess;
  @override
  final Option<Either<ValueFailure<String>, List<EventEntity>>> eventList;

  @override
  String toString() {
    return 'EventState(isLoading: $isLoading, failureOrSuccess: $failureOrSuccess, eventList: $eventList)';
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
            (identical(other.eventList, eventList) ||
                other.eventList == eventList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, failureOrSuccess, eventList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventStateImplCopyWith<_$EventStateImpl> get copyWith =>
      __$$EventStateImplCopyWithImpl<_$EventStateImpl>(this, _$identity);
}

abstract class _EventState extends EventState {
  const factory _EventState(
      {required final bool isLoading,
      required final Option<Either<ValueFailure<String>, dynamic>>
          failureOrSuccess,
      required final Option<Either<ValueFailure<String>, List<EventEntity>>>
          eventList}) = _$EventStateImpl;
  const _EventState._() : super._();

  @override
  bool get isLoading;
  @override
  Option<Either<ValueFailure<String>, dynamic>> get failureOrSuccess;
  @override
  Option<Either<ValueFailure<String>, List<EventEntity>>> get eventList;
  @override
  @JsonKey(ignore: true)
  _$$EventStateImplCopyWith<_$EventStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
