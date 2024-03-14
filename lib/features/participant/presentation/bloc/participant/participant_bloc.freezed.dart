// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParticipantEvent {
  EventEntity get event => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventEntity event) getParticipants,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        createParticipant,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        deleteParticipantPressed,
    required TResult Function(EventEntity event, ParticipantEntity participant)
        addParticipantToEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventEntity event)? getParticipants,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        createParticipant,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult? Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventEntity event)? getParticipants,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        createParticipant,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParticipants value) getParticipants,
    required TResult Function(_CreateParticipant value) createParticipant,
    required TResult Function(_DeteleParticipantPressed value)
        deleteParticipantPressed,
    required TResult Function(_AddParticipantToEventEvent value)
        addParticipantToEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParticipants value)? getParticipants,
    TResult? Function(_CreateParticipant value)? createParticipant,
    TResult? Function(_DeteleParticipantPressed value)?
        deleteParticipantPressed,
    TResult? Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParticipants value)? getParticipants,
    TResult Function(_CreateParticipant value)? createParticipant,
    TResult Function(_DeteleParticipantPressed value)? deleteParticipantPressed,
    TResult Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParticipantEventCopyWith<ParticipantEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantEventCopyWith<$Res> {
  factory $ParticipantEventCopyWith(
          ParticipantEvent value, $Res Function(ParticipantEvent) then) =
      _$ParticipantEventCopyWithImpl<$Res, ParticipantEvent>;
  @useResult
  $Res call({EventEntity event});

  $EventEntityCopyWith<$Res> get event;
}

/// @nodoc
class _$ParticipantEventCopyWithImpl<$Res, $Val extends ParticipantEvent>
    implements $ParticipantEventCopyWith<$Res> {
  _$ParticipantEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventEntityCopyWith<$Res> get event {
    return $EventEntityCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetParticipantsImplCopyWith<$Res>
    implements $ParticipantEventCopyWith<$Res> {
  factory _$$GetParticipantsImplCopyWith(_$GetParticipantsImpl value,
          $Res Function(_$GetParticipantsImpl) then) =
      __$$GetParticipantsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EventEntity event});

  @override
  $EventEntityCopyWith<$Res> get event;
}

/// @nodoc
class __$$GetParticipantsImplCopyWithImpl<$Res>
    extends _$ParticipantEventCopyWithImpl<$Res, _$GetParticipantsImpl>
    implements _$$GetParticipantsImplCopyWith<$Res> {
  __$$GetParticipantsImplCopyWithImpl(
      _$GetParticipantsImpl _value, $Res Function(_$GetParticipantsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$GetParticipantsImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity,
    ));
  }
}

/// @nodoc

class _$GetParticipantsImpl implements _GetParticipants {
  const _$GetParticipantsImpl({required this.event});

  @override
  final EventEntity event;

  @override
  String toString() {
    return 'ParticipantEvent.getParticipants(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetParticipantsImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetParticipantsImplCopyWith<_$GetParticipantsImpl> get copyWith =>
      __$$GetParticipantsImplCopyWithImpl<_$GetParticipantsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventEntity event) getParticipants,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        createParticipant,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        deleteParticipantPressed,
    required TResult Function(EventEntity event, ParticipantEntity participant)
        addParticipantToEvent,
  }) {
    return getParticipants(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventEntity event)? getParticipants,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        createParticipant,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult? Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
  }) {
    return getParticipants?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventEntity event)? getParticipants,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        createParticipant,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    required TResult orElse(),
  }) {
    if (getParticipants != null) {
      return getParticipants(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParticipants value) getParticipants,
    required TResult Function(_CreateParticipant value) createParticipant,
    required TResult Function(_DeteleParticipantPressed value)
        deleteParticipantPressed,
    required TResult Function(_AddParticipantToEventEvent value)
        addParticipantToEvent,
  }) {
    return getParticipants(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParticipants value)? getParticipants,
    TResult? Function(_CreateParticipant value)? createParticipant,
    TResult? Function(_DeteleParticipantPressed value)?
        deleteParticipantPressed,
    TResult? Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
  }) {
    return getParticipants?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParticipants value)? getParticipants,
    TResult Function(_CreateParticipant value)? createParticipant,
    TResult Function(_DeteleParticipantPressed value)? deleteParticipantPressed,
    TResult Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    required TResult orElse(),
  }) {
    if (getParticipants != null) {
      return getParticipants(this);
    }
    return orElse();
  }
}

abstract class _GetParticipants implements ParticipantEvent {
  const factory _GetParticipants({required final EventEntity event}) =
      _$GetParticipantsImpl;

  @override
  EventEntity get event;
  @override
  @JsonKey(ignore: true)
  _$$GetParticipantsImplCopyWith<_$GetParticipantsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateParticipantImplCopyWith<$Res>
    implements $ParticipantEventCopyWith<$Res> {
  factory _$$CreateParticipantImplCopyWith(_$CreateParticipantImpl value,
          $Res Function(_$CreateParticipantImpl) then) =
      __$$CreateParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ParticipantEntity participant, EventEntity event});

  $ParticipantEntityCopyWith<$Res> get participant;
  @override
  $EventEntityCopyWith<$Res> get event;
}

/// @nodoc
class __$$CreateParticipantImplCopyWithImpl<$Res>
    extends _$ParticipantEventCopyWithImpl<$Res, _$CreateParticipantImpl>
    implements _$$CreateParticipantImplCopyWith<$Res> {
  __$$CreateParticipantImplCopyWithImpl(_$CreateParticipantImpl _value,
      $Res Function(_$CreateParticipantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participant = null,
    Object? event = null,
  }) {
    return _then(_$CreateParticipantImpl(
      participant: null == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as ParticipantEntity,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParticipantEntityCopyWith<$Res> get participant {
    return $ParticipantEntityCopyWith<$Res>(_value.participant, (value) {
      return _then(_value.copyWith(participant: value));
    });
  }
}

/// @nodoc

class _$CreateParticipantImpl implements _CreateParticipant {
  const _$CreateParticipantImpl(
      {required this.participant, required this.event});

  @override
  final ParticipantEntity participant;
  @override
  final EventEntity event;

  @override
  String toString() {
    return 'ParticipantEvent.createParticipant(participant: $participant, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateParticipantImpl &&
            (identical(other.participant, participant) ||
                other.participant == participant) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, participant, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateParticipantImplCopyWith<_$CreateParticipantImpl> get copyWith =>
      __$$CreateParticipantImplCopyWithImpl<_$CreateParticipantImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventEntity event) getParticipants,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        createParticipant,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        deleteParticipantPressed,
    required TResult Function(EventEntity event, ParticipantEntity participant)
        addParticipantToEvent,
  }) {
    return createParticipant(participant, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventEntity event)? getParticipants,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        createParticipant,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult? Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
  }) {
    return createParticipant?.call(participant, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventEntity event)? getParticipants,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        createParticipant,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    required TResult orElse(),
  }) {
    if (createParticipant != null) {
      return createParticipant(participant, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParticipants value) getParticipants,
    required TResult Function(_CreateParticipant value) createParticipant,
    required TResult Function(_DeteleParticipantPressed value)
        deleteParticipantPressed,
    required TResult Function(_AddParticipantToEventEvent value)
        addParticipantToEvent,
  }) {
    return createParticipant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParticipants value)? getParticipants,
    TResult? Function(_CreateParticipant value)? createParticipant,
    TResult? Function(_DeteleParticipantPressed value)?
        deleteParticipantPressed,
    TResult? Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
  }) {
    return createParticipant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParticipants value)? getParticipants,
    TResult Function(_CreateParticipant value)? createParticipant,
    TResult Function(_DeteleParticipantPressed value)? deleteParticipantPressed,
    TResult Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    required TResult orElse(),
  }) {
    if (createParticipant != null) {
      return createParticipant(this);
    }
    return orElse();
  }
}

abstract class _CreateParticipant implements ParticipantEvent {
  const factory _CreateParticipant(
      {required final ParticipantEntity participant,
      required final EventEntity event}) = _$CreateParticipantImpl;

  ParticipantEntity get participant;
  @override
  EventEntity get event;
  @override
  @JsonKey(ignore: true)
  _$$CreateParticipantImplCopyWith<_$CreateParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeteleParticipantPressedImplCopyWith<$Res>
    implements $ParticipantEventCopyWith<$Res> {
  factory _$$DeteleParticipantPressedImplCopyWith(
          _$DeteleParticipantPressedImpl value,
          $Res Function(_$DeteleParticipantPressedImpl) then) =
      __$$DeteleParticipantPressedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ParticipantEntity participant, EventEntity event});

  $ParticipantEntityCopyWith<$Res> get participant;
  @override
  $EventEntityCopyWith<$Res> get event;
}

/// @nodoc
class __$$DeteleParticipantPressedImplCopyWithImpl<$Res>
    extends _$ParticipantEventCopyWithImpl<$Res, _$DeteleParticipantPressedImpl>
    implements _$$DeteleParticipantPressedImplCopyWith<$Res> {
  __$$DeteleParticipantPressedImplCopyWithImpl(
      _$DeteleParticipantPressedImpl _value,
      $Res Function(_$DeteleParticipantPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participant = null,
    Object? event = null,
  }) {
    return _then(_$DeteleParticipantPressedImpl(
      participant: null == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as ParticipantEntity,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParticipantEntityCopyWith<$Res> get participant {
    return $ParticipantEntityCopyWith<$Res>(_value.participant, (value) {
      return _then(_value.copyWith(participant: value));
    });
  }
}

/// @nodoc

class _$DeteleParticipantPressedImpl implements _DeteleParticipantPressed {
  const _$DeteleParticipantPressedImpl(
      {required this.participant, required this.event});

  @override
  final ParticipantEntity participant;
  @override
  final EventEntity event;

  @override
  String toString() {
    return 'ParticipantEvent.deleteParticipantPressed(participant: $participant, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeteleParticipantPressedImpl &&
            (identical(other.participant, participant) ||
                other.participant == participant) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, participant, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeteleParticipantPressedImplCopyWith<_$DeteleParticipantPressedImpl>
      get copyWith => __$$DeteleParticipantPressedImplCopyWithImpl<
          _$DeteleParticipantPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventEntity event) getParticipants,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        createParticipant,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        deleteParticipantPressed,
    required TResult Function(EventEntity event, ParticipantEntity participant)
        addParticipantToEvent,
  }) {
    return deleteParticipantPressed(participant, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventEntity event)? getParticipants,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        createParticipant,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult? Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
  }) {
    return deleteParticipantPressed?.call(participant, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventEntity event)? getParticipants,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        createParticipant,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    required TResult orElse(),
  }) {
    if (deleteParticipantPressed != null) {
      return deleteParticipantPressed(participant, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParticipants value) getParticipants,
    required TResult Function(_CreateParticipant value) createParticipant,
    required TResult Function(_DeteleParticipantPressed value)
        deleteParticipantPressed,
    required TResult Function(_AddParticipantToEventEvent value)
        addParticipantToEvent,
  }) {
    return deleteParticipantPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParticipants value)? getParticipants,
    TResult? Function(_CreateParticipant value)? createParticipant,
    TResult? Function(_DeteleParticipantPressed value)?
        deleteParticipantPressed,
    TResult? Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
  }) {
    return deleteParticipantPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParticipants value)? getParticipants,
    TResult Function(_CreateParticipant value)? createParticipant,
    TResult Function(_DeteleParticipantPressed value)? deleteParticipantPressed,
    TResult Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    required TResult orElse(),
  }) {
    if (deleteParticipantPressed != null) {
      return deleteParticipantPressed(this);
    }
    return orElse();
  }
}

abstract class _DeteleParticipantPressed implements ParticipantEvent {
  const factory _DeteleParticipantPressed(
      {required final ParticipantEntity participant,
      required final EventEntity event}) = _$DeteleParticipantPressedImpl;

  ParticipantEntity get participant;
  @override
  EventEntity get event;
  @override
  @JsonKey(ignore: true)
  _$$DeteleParticipantPressedImplCopyWith<_$DeteleParticipantPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddParticipantToEventEventImplCopyWith<$Res>
    implements $ParticipantEventCopyWith<$Res> {
  factory _$$AddParticipantToEventEventImplCopyWith(
          _$AddParticipantToEventEventImpl value,
          $Res Function(_$AddParticipantToEventEventImpl) then) =
      __$$AddParticipantToEventEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EventEntity event, ParticipantEntity participant});

  @override
  $EventEntityCopyWith<$Res> get event;
  $ParticipantEntityCopyWith<$Res> get participant;
}

/// @nodoc
class __$$AddParticipantToEventEventImplCopyWithImpl<$Res>
    extends _$ParticipantEventCopyWithImpl<$Res,
        _$AddParticipantToEventEventImpl>
    implements _$$AddParticipantToEventEventImplCopyWith<$Res> {
  __$$AddParticipantToEventEventImplCopyWithImpl(
      _$AddParticipantToEventEventImpl _value,
      $Res Function(_$AddParticipantToEventEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? participant = null,
  }) {
    return _then(_$AddParticipantToEventEventImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity,
      participant: null == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as ParticipantEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParticipantEntityCopyWith<$Res> get participant {
    return $ParticipantEntityCopyWith<$Res>(_value.participant, (value) {
      return _then(_value.copyWith(participant: value));
    });
  }
}

/// @nodoc

class _$AddParticipantToEventEventImpl implements _AddParticipantToEventEvent {
  const _$AddParticipantToEventEventImpl(
      {required this.event, required this.participant});

  @override
  final EventEntity event;
  @override
  final ParticipantEntity participant;

  @override
  String toString() {
    return 'ParticipantEvent.addParticipantToEvent(event: $event, participant: $participant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddParticipantToEventEventImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.participant, participant) ||
                other.participant == participant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event, participant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddParticipantToEventEventImplCopyWith<_$AddParticipantToEventEventImpl>
      get copyWith => __$$AddParticipantToEventEventImplCopyWithImpl<
          _$AddParticipantToEventEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventEntity event) getParticipants,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        createParticipant,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        deleteParticipantPressed,
    required TResult Function(EventEntity event, ParticipantEntity participant)
        addParticipantToEvent,
  }) {
    return addParticipantToEvent(event, participant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventEntity event)? getParticipants,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        createParticipant,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult? Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
  }) {
    return addParticipantToEvent?.call(event, participant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventEntity event)? getParticipants,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        createParticipant,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    required TResult orElse(),
  }) {
    if (addParticipantToEvent != null) {
      return addParticipantToEvent(event, participant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParticipants value) getParticipants,
    required TResult Function(_CreateParticipant value) createParticipant,
    required TResult Function(_DeteleParticipantPressed value)
        deleteParticipantPressed,
    required TResult Function(_AddParticipantToEventEvent value)
        addParticipantToEvent,
  }) {
    return addParticipantToEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParticipants value)? getParticipants,
    TResult? Function(_CreateParticipant value)? createParticipant,
    TResult? Function(_DeteleParticipantPressed value)?
        deleteParticipantPressed,
    TResult? Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
  }) {
    return addParticipantToEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParticipants value)? getParticipants,
    TResult Function(_CreateParticipant value)? createParticipant,
    TResult Function(_DeteleParticipantPressed value)? deleteParticipantPressed,
    TResult Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    required TResult orElse(),
  }) {
    if (addParticipantToEvent != null) {
      return addParticipantToEvent(this);
    }
    return orElse();
  }
}

abstract class _AddParticipantToEventEvent implements ParticipantEvent {
  const factory _AddParticipantToEventEvent(
          {required final EventEntity event,
          required final ParticipantEntity participant}) =
      _$AddParticipantToEventEventImpl;

  @override
  EventEntity get event;
  ParticipantEntity get participant;
  @override
  @JsonKey(ignore: true)
  _$$AddParticipantToEventEventImplCopyWith<_$AddParticipantToEventEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParticipantState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ValueFailure<String>, dynamic>> get failureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<ValueFailure<String>, List<ParticipantEntity>>>
      get participantList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParticipantStateCopyWith<ParticipantState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantStateCopyWith<$Res> {
  factory $ParticipantStateCopyWith(
          ParticipantState value, $Res Function(ParticipantState) then) =
      _$ParticipantStateCopyWithImpl<$Res, ParticipantState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ValueFailure<String>, dynamic>> failureOrSuccess,
      Option<Either<ValueFailure<String>, List<ParticipantEntity>>>
          participantList});
}

/// @nodoc
class _$ParticipantStateCopyWithImpl<$Res, $Val extends ParticipantState>
    implements $ParticipantStateCopyWith<$Res> {
  _$ParticipantStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccess = null,
    Object? participantList = null,
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
      participantList: null == participantList
          ? _value.participantList
          : participantList // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure<String>, List<ParticipantEntity>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParticipantStateImplCopyWith<$Res>
    implements $ParticipantStateCopyWith<$Res> {
  factory _$$ParticipantStateImplCopyWith(_$ParticipantStateImpl value,
          $Res Function(_$ParticipantStateImpl) then) =
      __$$ParticipantStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ValueFailure<String>, dynamic>> failureOrSuccess,
      Option<Either<ValueFailure<String>, List<ParticipantEntity>>>
          participantList});
}

/// @nodoc
class __$$ParticipantStateImplCopyWithImpl<$Res>
    extends _$ParticipantStateCopyWithImpl<$Res, _$ParticipantStateImpl>
    implements _$$ParticipantStateImplCopyWith<$Res> {
  __$$ParticipantStateImplCopyWithImpl(_$ParticipantStateImpl _value,
      $Res Function(_$ParticipantStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccess = null,
    Object? participantList = null,
  }) {
    return _then(_$ParticipantStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure<String>, dynamic>>,
      participantList: null == participantList
          ? _value.participantList
          : participantList // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure<String>, List<ParticipantEntity>>>,
    ));
  }
}

/// @nodoc

class _$ParticipantStateImpl extends _ParticipantState {
  const _$ParticipantStateImpl(
      {required this.isLoading,
      required this.failureOrSuccess,
      required this.participantList})
      : super._();

  @override
  final bool isLoading;
  @override
  final Option<Either<ValueFailure<String>, dynamic>> failureOrSuccess;
  @override
  final Option<Either<ValueFailure<String>, List<ParticipantEntity>>>
      participantList;

  @override
  String toString() {
    return 'ParticipantState(isLoading: $isLoading, failureOrSuccess: $failureOrSuccess, participantList: $participantList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess) &&
            (identical(other.participantList, participantList) ||
                other.participantList == participantList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, failureOrSuccess, participantList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantStateImplCopyWith<_$ParticipantStateImpl> get copyWith =>
      __$$ParticipantStateImplCopyWithImpl<_$ParticipantStateImpl>(
          this, _$identity);
}

abstract class _ParticipantState extends ParticipantState {
  const factory _ParticipantState(
      {required final bool isLoading,
      required final Option<Either<ValueFailure<String>, dynamic>>
          failureOrSuccess,
      required final Option<
              Either<ValueFailure<String>, List<ParticipantEntity>>>
          participantList}) = _$ParticipantStateImpl;
  const _ParticipantState._() : super._();

  @override
  bool get isLoading;
  @override
  Option<Either<ValueFailure<String>, dynamic>> get failureOrSuccess;
  @override
  Option<Either<ValueFailure<String>, List<ParticipantEntity>>>
      get participantList;
  @override
  @JsonKey(ignore: true)
  _$$ParticipantStateImplCopyWith<_$ParticipantStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
