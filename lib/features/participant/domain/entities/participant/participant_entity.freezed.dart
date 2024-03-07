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
  String get nim => throw _privateConstructorUsedError;
  List<EventEntity>? get events => throw _privateConstructorUsedError;

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
      String nim,
      List<EventEntity>? events});
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
    Object? nim = null,
    Object? events = freezed,
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
      nim: null == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>?,
    ) as $Val);
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
      String nim,
      List<EventEntity>? events});
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
    Object? nim = null,
    Object? events = freezed,
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
      nim: null == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String,
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>?,
    ));
  }
}

/// @nodoc

class _$ParticipantEntityImpl implements _ParticipantEntity {
  const _$ParticipantEntityImpl(
      {required this.ref,
      required this.name,
      required this.nim,
      final List<EventEntity>? events})
      : _events = events;

  @override
  final DocumentReference<Object?> ref;
  @override
  final String name;
  @override
  final String nim;
  final List<EventEntity>? _events;
  @override
  List<EventEntity>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ParticipantEntity(ref: $ref, name: $name, nim: $nim, events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantEntityImpl &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nim, nim) || other.nim == nim) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ref, name, nim,
      const DeepCollectionEquality().hash(_events));

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
      "nim": nim,
      "events": events,
    };
  }
}

abstract class _ParticipantEntity implements ParticipantEntity {
  const factory _ParticipantEntity(
      {required final DocumentReference<Object?> ref,
      required final String name,
      required final String nim,
      final List<EventEntity>? events}) = _$ParticipantEntityImpl;

  @override
  DocumentReference<Object?> get ref;
  @override
  String get name;
  @override
  String get nim;
  @override
  List<EventEntity>? get events;
  @override
  @JsonKey(ignore: true)
  _$$ParticipantEntityImplCopyWith<_$ParticipantEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
