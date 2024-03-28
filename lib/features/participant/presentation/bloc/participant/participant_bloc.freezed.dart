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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventEntity event) getParticipants,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        deleteParticipantPressed,
    required TResult Function(EventEntity event, ParticipantEntity participant)
        addParticipantToEvent,
    required TResult Function(ParticipantEntity participant)
        selectedParticipantPressed,
    required TResult Function(String searchText) searchParticipant,
    required TResult Function(EventEntity event, String participantRole)
        addParticipantsToExcel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventEntity event)? getParticipants,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult? Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult? Function(ParticipantEntity participant)?
        selectedParticipantPressed,
    TResult? Function(String searchText)? searchParticipant,
    TResult? Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventEntity event)? getParticipants,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult Function(ParticipantEntity participant)? selectedParticipantPressed,
    TResult Function(String searchText)? searchParticipant,
    TResult Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParticipants value) getParticipants,
    required TResult Function(_DeteleParticipantPressed value)
        deleteParticipantPressed,
    required TResult Function(_AddParticipantToEventEvent value)
        addParticipantToEvent,
    required TResult Function(_SelectedParticipantPressed value)
        selectedParticipantPressed,
    required TResult Function(_SearchParticipant value) searchParticipant,
    required TResult Function(_AddParticipantsToExcel value)
        addParticipantsToExcel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParticipants value)? getParticipants,
    TResult? Function(_DeteleParticipantPressed value)?
        deleteParticipantPressed,
    TResult? Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult? Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult? Function(_SearchParticipant value)? searchParticipant,
    TResult? Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParticipants value)? getParticipants,
    TResult Function(_DeteleParticipantPressed value)? deleteParticipantPressed,
    TResult Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult Function(_SearchParticipant value)? searchParticipant,
    TResult Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantEventCopyWith<$Res> {
  factory $ParticipantEventCopyWith(
          ParticipantEvent value, $Res Function(ParticipantEvent) then) =
      _$ParticipantEventCopyWithImpl<$Res, ParticipantEvent>;
}

/// @nodoc
class _$ParticipantEventCopyWithImpl<$Res, $Val extends ParticipantEvent>
    implements $ParticipantEventCopyWith<$Res> {
  _$ParticipantEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetParticipantsImplCopyWith<$Res> {
  factory _$$GetParticipantsImplCopyWith(_$GetParticipantsImpl value,
          $Res Function(_$GetParticipantsImpl) then) =
      __$$GetParticipantsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventEntity event});

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

  @override
  @pragma('vm:prefer-inline')
  $EventEntityCopyWith<$Res> get event {
    return $EventEntityCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
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
        deleteParticipantPressed,
    required TResult Function(EventEntity event, ParticipantEntity participant)
        addParticipantToEvent,
    required TResult Function(ParticipantEntity participant)
        selectedParticipantPressed,
    required TResult Function(String searchText) searchParticipant,
    required TResult Function(EventEntity event, String participantRole)
        addParticipantsToExcel,
  }) {
    return getParticipants(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventEntity event)? getParticipants,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult? Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult? Function(ParticipantEntity participant)?
        selectedParticipantPressed,
    TResult? Function(String searchText)? searchParticipant,
    TResult? Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
  }) {
    return getParticipants?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventEntity event)? getParticipants,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult Function(ParticipantEntity participant)? selectedParticipantPressed,
    TResult Function(String searchText)? searchParticipant,
    TResult Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
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
    required TResult Function(_DeteleParticipantPressed value)
        deleteParticipantPressed,
    required TResult Function(_AddParticipantToEventEvent value)
        addParticipantToEvent,
    required TResult Function(_SelectedParticipantPressed value)
        selectedParticipantPressed,
    required TResult Function(_SearchParticipant value) searchParticipant,
    required TResult Function(_AddParticipantsToExcel value)
        addParticipantsToExcel,
  }) {
    return getParticipants(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParticipants value)? getParticipants,
    TResult? Function(_DeteleParticipantPressed value)?
        deleteParticipantPressed,
    TResult? Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult? Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult? Function(_SearchParticipant value)? searchParticipant,
    TResult? Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
  }) {
    return getParticipants?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParticipants value)? getParticipants,
    TResult Function(_DeteleParticipantPressed value)? deleteParticipantPressed,
    TResult Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult Function(_SearchParticipant value)? searchParticipant,
    TResult Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
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

  EventEntity get event;
  @JsonKey(ignore: true)
  _$$GetParticipantsImplCopyWith<_$GetParticipantsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeteleParticipantPressedImplCopyWith<$Res> {
  factory _$$DeteleParticipantPressedImplCopyWith(
          _$DeteleParticipantPressedImpl value,
          $Res Function(_$DeteleParticipantPressedImpl) then) =
      __$$DeteleParticipantPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParticipantEntity participant, EventEntity event});

  $ParticipantEntityCopyWith<$Res> get participant;
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

  @override
  @pragma('vm:prefer-inline')
  $EventEntityCopyWith<$Res> get event {
    return $EventEntityCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
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
        deleteParticipantPressed,
    required TResult Function(EventEntity event, ParticipantEntity participant)
        addParticipantToEvent,
    required TResult Function(ParticipantEntity participant)
        selectedParticipantPressed,
    required TResult Function(String searchText) searchParticipant,
    required TResult Function(EventEntity event, String participantRole)
        addParticipantsToExcel,
  }) {
    return deleteParticipantPressed(participant, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventEntity event)? getParticipants,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult? Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult? Function(ParticipantEntity participant)?
        selectedParticipantPressed,
    TResult? Function(String searchText)? searchParticipant,
    TResult? Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
  }) {
    return deleteParticipantPressed?.call(participant, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventEntity event)? getParticipants,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult Function(ParticipantEntity participant)? selectedParticipantPressed,
    TResult Function(String searchText)? searchParticipant,
    TResult Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
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
    required TResult Function(_DeteleParticipantPressed value)
        deleteParticipantPressed,
    required TResult Function(_AddParticipantToEventEvent value)
        addParticipantToEvent,
    required TResult Function(_SelectedParticipantPressed value)
        selectedParticipantPressed,
    required TResult Function(_SearchParticipant value) searchParticipant,
    required TResult Function(_AddParticipantsToExcel value)
        addParticipantsToExcel,
  }) {
    return deleteParticipantPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParticipants value)? getParticipants,
    TResult? Function(_DeteleParticipantPressed value)?
        deleteParticipantPressed,
    TResult? Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult? Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult? Function(_SearchParticipant value)? searchParticipant,
    TResult? Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
  }) {
    return deleteParticipantPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParticipants value)? getParticipants,
    TResult Function(_DeteleParticipantPressed value)? deleteParticipantPressed,
    TResult Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult Function(_SearchParticipant value)? searchParticipant,
    TResult Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
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
  EventEntity get event;
  @JsonKey(ignore: true)
  _$$DeteleParticipantPressedImplCopyWith<_$DeteleParticipantPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddParticipantToEventEventImplCopyWith<$Res> {
  factory _$$AddParticipantToEventEventImplCopyWith(
          _$AddParticipantToEventEventImpl value,
          $Res Function(_$AddParticipantToEventEventImpl) then) =
      __$$AddParticipantToEventEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventEntity event, ParticipantEntity participant});

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
  $EventEntityCopyWith<$Res> get event {
    return $EventEntityCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
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
        deleteParticipantPressed,
    required TResult Function(EventEntity event, ParticipantEntity participant)
        addParticipantToEvent,
    required TResult Function(ParticipantEntity participant)
        selectedParticipantPressed,
    required TResult Function(String searchText) searchParticipant,
    required TResult Function(EventEntity event, String participantRole)
        addParticipantsToExcel,
  }) {
    return addParticipantToEvent(event, participant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventEntity event)? getParticipants,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult? Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult? Function(ParticipantEntity participant)?
        selectedParticipantPressed,
    TResult? Function(String searchText)? searchParticipant,
    TResult? Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
  }) {
    return addParticipantToEvent?.call(event, participant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventEntity event)? getParticipants,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult Function(ParticipantEntity participant)? selectedParticipantPressed,
    TResult Function(String searchText)? searchParticipant,
    TResult Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
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
    required TResult Function(_DeteleParticipantPressed value)
        deleteParticipantPressed,
    required TResult Function(_AddParticipantToEventEvent value)
        addParticipantToEvent,
    required TResult Function(_SelectedParticipantPressed value)
        selectedParticipantPressed,
    required TResult Function(_SearchParticipant value) searchParticipant,
    required TResult Function(_AddParticipantsToExcel value)
        addParticipantsToExcel,
  }) {
    return addParticipantToEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParticipants value)? getParticipants,
    TResult? Function(_DeteleParticipantPressed value)?
        deleteParticipantPressed,
    TResult? Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult? Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult? Function(_SearchParticipant value)? searchParticipant,
    TResult? Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
  }) {
    return addParticipantToEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParticipants value)? getParticipants,
    TResult Function(_DeteleParticipantPressed value)? deleteParticipantPressed,
    TResult Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult Function(_SearchParticipant value)? searchParticipant,
    TResult Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
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

  EventEntity get event;
  ParticipantEntity get participant;
  @JsonKey(ignore: true)
  _$$AddParticipantToEventEventImplCopyWith<_$AddParticipantToEventEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedParticipantPressedImplCopyWith<$Res> {
  factory _$$SelectedParticipantPressedImplCopyWith(
          _$SelectedParticipantPressedImpl value,
          $Res Function(_$SelectedParticipantPressedImpl) then) =
      __$$SelectedParticipantPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParticipantEntity participant});

  $ParticipantEntityCopyWith<$Res> get participant;
}

/// @nodoc
class __$$SelectedParticipantPressedImplCopyWithImpl<$Res>
    extends _$ParticipantEventCopyWithImpl<$Res,
        _$SelectedParticipantPressedImpl>
    implements _$$SelectedParticipantPressedImplCopyWith<$Res> {
  __$$SelectedParticipantPressedImplCopyWithImpl(
      _$SelectedParticipantPressedImpl _value,
      $Res Function(_$SelectedParticipantPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participant = null,
  }) {
    return _then(_$SelectedParticipantPressedImpl(
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

class _$SelectedParticipantPressedImpl implements _SelectedParticipantPressed {
  const _$SelectedParticipantPressedImpl({required this.participant});

  @override
  final ParticipantEntity participant;

  @override
  String toString() {
    return 'ParticipantEvent.selectedParticipantPressed(participant: $participant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedParticipantPressedImpl &&
            (identical(other.participant, participant) ||
                other.participant == participant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, participant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedParticipantPressedImplCopyWith<_$SelectedParticipantPressedImpl>
      get copyWith => __$$SelectedParticipantPressedImplCopyWithImpl<
          _$SelectedParticipantPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventEntity event) getParticipants,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        deleteParticipantPressed,
    required TResult Function(EventEntity event, ParticipantEntity participant)
        addParticipantToEvent,
    required TResult Function(ParticipantEntity participant)
        selectedParticipantPressed,
    required TResult Function(String searchText) searchParticipant,
    required TResult Function(EventEntity event, String participantRole)
        addParticipantsToExcel,
  }) {
    return selectedParticipantPressed(participant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventEntity event)? getParticipants,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult? Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult? Function(ParticipantEntity participant)?
        selectedParticipantPressed,
    TResult? Function(String searchText)? searchParticipant,
    TResult? Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
  }) {
    return selectedParticipantPressed?.call(participant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventEntity event)? getParticipants,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult Function(ParticipantEntity participant)? selectedParticipantPressed,
    TResult Function(String searchText)? searchParticipant,
    TResult Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
    required TResult orElse(),
  }) {
    if (selectedParticipantPressed != null) {
      return selectedParticipantPressed(participant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParticipants value) getParticipants,
    required TResult Function(_DeteleParticipantPressed value)
        deleteParticipantPressed,
    required TResult Function(_AddParticipantToEventEvent value)
        addParticipantToEvent,
    required TResult Function(_SelectedParticipantPressed value)
        selectedParticipantPressed,
    required TResult Function(_SearchParticipant value) searchParticipant,
    required TResult Function(_AddParticipantsToExcel value)
        addParticipantsToExcel,
  }) {
    return selectedParticipantPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParticipants value)? getParticipants,
    TResult? Function(_DeteleParticipantPressed value)?
        deleteParticipantPressed,
    TResult? Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult? Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult? Function(_SearchParticipant value)? searchParticipant,
    TResult? Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
  }) {
    return selectedParticipantPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParticipants value)? getParticipants,
    TResult Function(_DeteleParticipantPressed value)? deleteParticipantPressed,
    TResult Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult Function(_SearchParticipant value)? searchParticipant,
    TResult Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
    required TResult orElse(),
  }) {
    if (selectedParticipantPressed != null) {
      return selectedParticipantPressed(this);
    }
    return orElse();
  }
}

abstract class _SelectedParticipantPressed implements ParticipantEvent {
  const factory _SelectedParticipantPressed(
          {required final ParticipantEntity participant}) =
      _$SelectedParticipantPressedImpl;

  ParticipantEntity get participant;
  @JsonKey(ignore: true)
  _$$SelectedParticipantPressedImplCopyWith<_$SelectedParticipantPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchParticipantImplCopyWith<$Res> {
  factory _$$SearchParticipantImplCopyWith(_$SearchParticipantImpl value,
          $Res Function(_$SearchParticipantImpl) then) =
      __$$SearchParticipantImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$SearchParticipantImplCopyWithImpl<$Res>
    extends _$ParticipantEventCopyWithImpl<$Res, _$SearchParticipantImpl>
    implements _$$SearchParticipantImplCopyWith<$Res> {
  __$$SearchParticipantImplCopyWithImpl(_$SearchParticipantImpl _value,
      $Res Function(_$SearchParticipantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$SearchParticipantImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchParticipantImpl implements _SearchParticipant {
  const _$SearchParticipantImpl({required this.searchText});

  @override
  final String searchText;

  @override
  String toString() {
    return 'ParticipantEvent.searchParticipant(searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchParticipantImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchParticipantImplCopyWith<_$SearchParticipantImpl> get copyWith =>
      __$$SearchParticipantImplCopyWithImpl<_$SearchParticipantImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventEntity event) getParticipants,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        deleteParticipantPressed,
    required TResult Function(EventEntity event, ParticipantEntity participant)
        addParticipantToEvent,
    required TResult Function(ParticipantEntity participant)
        selectedParticipantPressed,
    required TResult Function(String searchText) searchParticipant,
    required TResult Function(EventEntity event, String participantRole)
        addParticipantsToExcel,
  }) {
    return searchParticipant(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventEntity event)? getParticipants,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult? Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult? Function(ParticipantEntity participant)?
        selectedParticipantPressed,
    TResult? Function(String searchText)? searchParticipant,
    TResult? Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
  }) {
    return searchParticipant?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventEntity event)? getParticipants,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult Function(ParticipantEntity participant)? selectedParticipantPressed,
    TResult Function(String searchText)? searchParticipant,
    TResult Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
    required TResult orElse(),
  }) {
    if (searchParticipant != null) {
      return searchParticipant(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParticipants value) getParticipants,
    required TResult Function(_DeteleParticipantPressed value)
        deleteParticipantPressed,
    required TResult Function(_AddParticipantToEventEvent value)
        addParticipantToEvent,
    required TResult Function(_SelectedParticipantPressed value)
        selectedParticipantPressed,
    required TResult Function(_SearchParticipant value) searchParticipant,
    required TResult Function(_AddParticipantsToExcel value)
        addParticipantsToExcel,
  }) {
    return searchParticipant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParticipants value)? getParticipants,
    TResult? Function(_DeteleParticipantPressed value)?
        deleteParticipantPressed,
    TResult? Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult? Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult? Function(_SearchParticipant value)? searchParticipant,
    TResult? Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
  }) {
    return searchParticipant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParticipants value)? getParticipants,
    TResult Function(_DeteleParticipantPressed value)? deleteParticipantPressed,
    TResult Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult Function(_SearchParticipant value)? searchParticipant,
    TResult Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
    required TResult orElse(),
  }) {
    if (searchParticipant != null) {
      return searchParticipant(this);
    }
    return orElse();
  }
}

abstract class _SearchParticipant implements ParticipantEvent {
  const factory _SearchParticipant({required final String searchText}) =
      _$SearchParticipantImpl;

  String get searchText;
  @JsonKey(ignore: true)
  _$$SearchParticipantImplCopyWith<_$SearchParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddParticipantsToExcelImplCopyWith<$Res> {
  factory _$$AddParticipantsToExcelImplCopyWith(
          _$AddParticipantsToExcelImpl value,
          $Res Function(_$AddParticipantsToExcelImpl) then) =
      __$$AddParticipantsToExcelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventEntity event, String participantRole});

  $EventEntityCopyWith<$Res> get event;
}

/// @nodoc
class __$$AddParticipantsToExcelImplCopyWithImpl<$Res>
    extends _$ParticipantEventCopyWithImpl<$Res, _$AddParticipantsToExcelImpl>
    implements _$$AddParticipantsToExcelImplCopyWith<$Res> {
  __$$AddParticipantsToExcelImplCopyWithImpl(
      _$AddParticipantsToExcelImpl _value,
      $Res Function(_$AddParticipantsToExcelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? participantRole = null,
  }) {
    return _then(_$AddParticipantsToExcelImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity,
      participantRole: null == participantRole
          ? _value.participantRole
          : participantRole // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$AddParticipantsToExcelImpl implements _AddParticipantsToExcel {
  const _$AddParticipantsToExcelImpl(
      {required this.event, required this.participantRole});

  @override
  final EventEntity event;
  @override
  final String participantRole;

  @override
  String toString() {
    return 'ParticipantEvent.addParticipantsToExcel(event: $event, participantRole: $participantRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddParticipantsToExcelImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.participantRole, participantRole) ||
                other.participantRole == participantRole));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event, participantRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddParticipantsToExcelImplCopyWith<_$AddParticipantsToExcelImpl>
      get copyWith => __$$AddParticipantsToExcelImplCopyWithImpl<
          _$AddParticipantsToExcelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventEntity event) getParticipants,
    required TResult Function(ParticipantEntity participant, EventEntity event)
        deleteParticipantPressed,
    required TResult Function(EventEntity event, ParticipantEntity participant)
        addParticipantToEvent,
    required TResult Function(ParticipantEntity participant)
        selectedParticipantPressed,
    required TResult Function(String searchText) searchParticipant,
    required TResult Function(EventEntity event, String participantRole)
        addParticipantsToExcel,
  }) {
    return addParticipantsToExcel(event, participantRole);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventEntity event)? getParticipants,
    TResult? Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult? Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult? Function(ParticipantEntity participant)?
        selectedParticipantPressed,
    TResult? Function(String searchText)? searchParticipant,
    TResult? Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
  }) {
    return addParticipantsToExcel?.call(event, participantRole);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventEntity event)? getParticipants,
    TResult Function(ParticipantEntity participant, EventEntity event)?
        deleteParticipantPressed,
    TResult Function(EventEntity event, ParticipantEntity participant)?
        addParticipantToEvent,
    TResult Function(ParticipantEntity participant)? selectedParticipantPressed,
    TResult Function(String searchText)? searchParticipant,
    TResult Function(EventEntity event, String participantRole)?
        addParticipantsToExcel,
    required TResult orElse(),
  }) {
    if (addParticipantsToExcel != null) {
      return addParticipantsToExcel(event, participantRole);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParticipants value) getParticipants,
    required TResult Function(_DeteleParticipantPressed value)
        deleteParticipantPressed,
    required TResult Function(_AddParticipantToEventEvent value)
        addParticipantToEvent,
    required TResult Function(_SelectedParticipantPressed value)
        selectedParticipantPressed,
    required TResult Function(_SearchParticipant value) searchParticipant,
    required TResult Function(_AddParticipantsToExcel value)
        addParticipantsToExcel,
  }) {
    return addParticipantsToExcel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParticipants value)? getParticipants,
    TResult? Function(_DeteleParticipantPressed value)?
        deleteParticipantPressed,
    TResult? Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult? Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult? Function(_SearchParticipant value)? searchParticipant,
    TResult? Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
  }) {
    return addParticipantsToExcel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParticipants value)? getParticipants,
    TResult Function(_DeteleParticipantPressed value)? deleteParticipantPressed,
    TResult Function(_AddParticipantToEventEvent value)? addParticipantToEvent,
    TResult Function(_SelectedParticipantPressed value)?
        selectedParticipantPressed,
    TResult Function(_SearchParticipant value)? searchParticipant,
    TResult Function(_AddParticipantsToExcel value)? addParticipantsToExcel,
    required TResult orElse(),
  }) {
    if (addParticipantsToExcel != null) {
      return addParticipantsToExcel(this);
    }
    return orElse();
  }
}

abstract class _AddParticipantsToExcel implements ParticipantEvent {
  const factory _AddParticipantsToExcel(
      {required final EventEntity event,
      required final String participantRole}) = _$AddParticipantsToExcelImpl;

  EventEntity get event;
  String get participantRole;
  @JsonKey(ignore: true)
  _$$AddParticipantsToExcelImplCopyWith<_$AddParticipantsToExcelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParticipantState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ValueFailure<String>, dynamic>> get failureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<ValueFailure<String>, List<ParticipantEntity>>>
      get participantList => throw _privateConstructorUsedError;
  List<ParticipantEntity> get searchParticipantResult =>
      throw _privateConstructorUsedError;
  ParticipantEntity? get selectedParticipant =>
      throw _privateConstructorUsedError;

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
          participantList,
      List<ParticipantEntity> searchParticipantResult,
      ParticipantEntity? selectedParticipant});

  $ParticipantEntityCopyWith<$Res>? get selectedParticipant;
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
    Object? searchParticipantResult = null,
    Object? selectedParticipant = freezed,
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
      searchParticipantResult: null == searchParticipantResult
          ? _value.searchParticipantResult
          : searchParticipantResult // ignore: cast_nullable_to_non_nullable
              as List<ParticipantEntity>,
      selectedParticipant: freezed == selectedParticipant
          ? _value.selectedParticipant
          : selectedParticipant // ignore: cast_nullable_to_non_nullable
              as ParticipantEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParticipantEntityCopyWith<$Res>? get selectedParticipant {
    if (_value.selectedParticipant == null) {
      return null;
    }

    return $ParticipantEntityCopyWith<$Res>(_value.selectedParticipant!,
        (value) {
      return _then(_value.copyWith(selectedParticipant: value) as $Val);
    });
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
          participantList,
      List<ParticipantEntity> searchParticipantResult,
      ParticipantEntity? selectedParticipant});

  @override
  $ParticipantEntityCopyWith<$Res>? get selectedParticipant;
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
    Object? searchParticipantResult = null,
    Object? selectedParticipant = freezed,
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
      searchParticipantResult: null == searchParticipantResult
          ? _value._searchParticipantResult
          : searchParticipantResult // ignore: cast_nullable_to_non_nullable
              as List<ParticipantEntity>,
      selectedParticipant: freezed == selectedParticipant
          ? _value.selectedParticipant
          : selectedParticipant // ignore: cast_nullable_to_non_nullable
              as ParticipantEntity?,
    ));
  }
}

/// @nodoc

class _$ParticipantStateImpl extends _ParticipantState {
  const _$ParticipantStateImpl(
      {required this.isLoading,
      required this.failureOrSuccess,
      required this.participantList,
      required final List<ParticipantEntity> searchParticipantResult,
      this.selectedParticipant})
      : _searchParticipantResult = searchParticipantResult,
        super._();

  @override
  final bool isLoading;
  @override
  final Option<Either<ValueFailure<String>, dynamic>> failureOrSuccess;
  @override
  final Option<Either<ValueFailure<String>, List<ParticipantEntity>>>
      participantList;
  final List<ParticipantEntity> _searchParticipantResult;
  @override
  List<ParticipantEntity> get searchParticipantResult {
    if (_searchParticipantResult is EqualUnmodifiableListView)
      return _searchParticipantResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchParticipantResult);
  }

  @override
  final ParticipantEntity? selectedParticipant;

  @override
  String toString() {
    return 'ParticipantState(isLoading: $isLoading, failureOrSuccess: $failureOrSuccess, participantList: $participantList, searchParticipantResult: $searchParticipantResult, selectedParticipant: $selectedParticipant)';
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
                other.participantList == participantList) &&
            const DeepCollectionEquality().equals(
                other._searchParticipantResult, _searchParticipantResult) &&
            (identical(other.selectedParticipant, selectedParticipant) ||
                other.selectedParticipant == selectedParticipant));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      failureOrSuccess,
      participantList,
      const DeepCollectionEquality().hash(_searchParticipantResult),
      selectedParticipant);

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
          participantList,
      required final List<ParticipantEntity> searchParticipantResult,
      final ParticipantEntity? selectedParticipant}) = _$ParticipantStateImpl;
  const _ParticipantState._() : super._();

  @override
  bool get isLoading;
  @override
  Option<Either<ValueFailure<String>, dynamic>> get failureOrSuccess;
  @override
  Option<Either<ValueFailure<String>, List<ParticipantEntity>>>
      get participantList;
  @override
  List<ParticipantEntity> get searchParticipantResult;
  @override
  ParticipantEntity? get selectedParticipant;
  @override
  @JsonKey(ignore: true)
  _$$ParticipantStateImplCopyWith<_$ParticipantStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
