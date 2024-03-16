// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParticipantEntity {
  DocumentReference<Object?> get ref => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get division => throw _privateConstructorUsedError;
  DateTime get datetime => throw _privateConstructorUsedError;
  String? get eventRaw => throw _privateConstructorUsedError;
  EventEntity? get event => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParticipantEntityCopyWith<ParticipantEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantEntityCopyWith<$Res> {
  factory $ParticipantEntityCopyWith(
          ParticipantEntity value, $Res Function(ParticipantEntity) then) =
      _$ParticipantEntityCopyWithImpl<$Res, ParticipantEntity>;
  @useResult
  $Res call(
      {DocumentReference<Object?> ref,
      String name,
      String email,
      String division,
      DateTime datetime,
      String? eventRaw,
      EventEntity? event});

  $EventEntityCopyWith<$Res>? get event;
}

/// @nodoc
class _$ParticipantEntityCopyWithImpl<$Res, $Val extends ParticipantEntity>
    implements $ParticipantEntityCopyWith<$Res> {
  _$ParticipantEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = null,
    Object? name = null,
    Object? email = null,
    Object? division = null,
    Object? datetime = null,
    Object? eventRaw = freezed,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventRaw: freezed == eventRaw
          ? _value.eventRaw
          : eventRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventEntityCopyWith<$Res>? get event {
    if (_value.event == null) {
      return null;
    }

    return $EventEntityCopyWith<$Res>(_value.event!, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParticipantEntityImplCopyWith<$Res>
    implements $ParticipantEntityCopyWith<$Res> {
  factory _$$ParticipantEntityImplCopyWith(_$ParticipantEntityImpl value,
          $Res Function(_$ParticipantEntityImpl) then) =
      __$$ParticipantEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentReference<Object?> ref,
      String name,
      String email,
      String division,
      DateTime datetime,
      String? eventRaw,
      EventEntity? event});

  @override
  $EventEntityCopyWith<$Res>? get event;
}

/// @nodoc
class __$$ParticipantEntityImplCopyWithImpl<$Res>
    extends _$ParticipantEntityCopyWithImpl<$Res, _$ParticipantEntityImpl>
    implements _$$ParticipantEntityImplCopyWith<$Res> {
  __$$ParticipantEntityImplCopyWithImpl(_$ParticipantEntityImpl _value,
      $Res Function(_$ParticipantEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = null,
    Object? name = null,
    Object? email = null,
    Object? division = null,
    Object? datetime = null,
    Object? eventRaw = freezed,
    Object? event = freezed,
  }) {
    return _then(_$ParticipantEntityImpl(
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventRaw: freezed == eventRaw
          ? _value.eventRaw
          : eventRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity?,
    ));
  }
}

/// @nodoc

class _$ParticipantEntityImpl implements _ParticipantEntity {
  _$ParticipantEntityImpl(
      {required this.ref,
      required this.name,
      required this.email,
      required this.division,
      required this.datetime,
      this.eventRaw,
      this.event});

  @override
  final DocumentReference<Object?> ref;
  @override
  final String name;
  @override
  final String email;
  @override
  final String division;
  @override
  final DateTime datetime;
  @override
  final String? eventRaw;
  @override
  final EventEntity? event;

  @override
  String toString() {
    return 'ParticipantEntity(ref: $ref, name: $name, email: $email, division: $division, datetime: $datetime, eventRaw: $eventRaw, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantEntityImpl &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.eventRaw, eventRaw) ||
                other.eventRaw == eventRaw) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, ref, name, email, division, datetime, eventRaw, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantEntityImplCopyWith<_$ParticipantEntityImpl> get copyWith =>
      __$$ParticipantEntityImplCopyWithImpl<_$ParticipantEntityImpl>(
          this, _$identity);

  @override
  Map<String, Object?> toFirestore() {
    return {
      "name": name,
      "email": email,
      "division": division,
      "datetime": datetime,
      // "events": event?.ref.id,
    };
  }
}

abstract class _ParticipantEntity implements ParticipantEntity {
  factory _ParticipantEntity(
      {required final DocumentReference<Object?> ref,
      required final String name,
      required final String email,
      required final String division,
      required final DateTime datetime,
      final String? eventRaw,
      final EventEntity? event}) = _$ParticipantEntityImpl;

  @override
  DocumentReference<Object?> get ref;
  @override
  String get name;
  @override
  String get email;
  @override
  String get division;
  @override
  DateTime get datetime;
  @override
  String? get eventRaw;
  @override
  EventEntity? get event;
  @override
  @JsonKey(ignore: true)
  _$$ParticipantEntityImplCopyWith<_$ParticipantEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
