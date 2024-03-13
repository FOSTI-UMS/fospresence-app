// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventEntity {
  DocumentReference<Object?> get ref => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get datetime => throw _privateConstructorUsedError;
  List<Map<String, Object?>>? get participants =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventEntityCopyWith<EventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEntityCopyWith<$Res> {
  factory $EventEntityCopyWith(
          EventEntity value, $Res Function(EventEntity) then) =
      _$EventEntityCopyWithImpl<$Res, EventEntity>;
  @useResult
  $Res call(
      {DocumentReference<Object?> ref,
      String name,
      DateTime datetime,
      List<Map<String, Object?>>? participants});
}

/// @nodoc
class _$EventEntityCopyWithImpl<$Res, $Val extends EventEntity>
    implements $EventEntityCopyWith<$Res> {
  _$EventEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = null,
    Object? name = null,
    Object? datetime = null,
    Object? participants = freezed,
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
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Map<String, Object?>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventEntityImplCopyWith<$Res>
    implements $EventEntityCopyWith<$Res> {
  factory _$$EventEntityImplCopyWith(
          _$EventEntityImpl value, $Res Function(_$EventEntityImpl) then) =
      __$$EventEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentReference<Object?> ref,
      String name,
      DateTime datetime,
      List<Map<String, Object?>>? participants});
}

/// @nodoc
class __$$EventEntityImplCopyWithImpl<$Res>
    extends _$EventEntityCopyWithImpl<$Res, _$EventEntityImpl>
    implements _$$EventEntityImplCopyWith<$Res> {
  __$$EventEntityImplCopyWithImpl(
      _$EventEntityImpl _value, $Res Function(_$EventEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = null,
    Object? name = null,
    Object? datetime = null,
    Object? participants = freezed,
  }) {
    return _then(_$EventEntityImpl(
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      participants: freezed == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Map<String, Object?>>?,
    ));
  }
}

/// @nodoc

class _$EventEntityImpl implements _EventEntity {
  const _$EventEntityImpl(
      {required this.ref,
      required this.name,
      required this.datetime,
      final List<Map<String, Object?>>? participants})
      : _participants = participants;

  @override
  final DocumentReference<Object?> ref;
  @override
  final String name;
  @override
  final DateTime datetime;
  final List<Map<String, Object?>>? _participants;
  @override
  List<Map<String, Object?>>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EventEntity(ref: $ref, name: $name, datetime: $datetime, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventEntityImpl &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ref, name, datetime,
      const DeepCollectionEquality().hash(_participants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventEntityImplCopyWith<_$EventEntityImpl> get copyWith =>
      __$$EventEntityImplCopyWithImpl<_$EventEntityImpl>(this, _$identity);

  @override
  Map<String, Object?> toFirestore() {
    return {
      "name": name,
      "datetime": datetime,
      "participants": participants,
    };
  }
}

abstract class _EventEntity implements EventEntity {
  const factory _EventEntity(
      {required final DocumentReference<Object?> ref,
      required final String name,
      required final DateTime datetime,
      final List<Map<String, Object?>>? participants}) = _$EventEntityImpl;

  @override
  DocumentReference<Object?> get ref;
  @override
  String get name;
  @override
  DateTime get datetime;
  @override
  List<Map<String, Object?>>? get participants;
  @override
  @JsonKey(ignore: true)
  _$$EventEntityImplCopyWith<_$EventEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
