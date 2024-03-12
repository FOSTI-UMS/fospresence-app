// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  String get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) firebaseError,
    required TResult Function(String errorMessage) eventAlreadyExists,
    required TResult Function(String errorMessage) participantAlreadyExists,
    required TResult Function(String errorMessage) invalidEventName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? firebaseError,
    TResult? Function(String errorMessage)? eventAlreadyExists,
    TResult? Function(String errorMessage)? participantAlreadyExists,
    TResult? Function(String errorMessage)? invalidEventName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? firebaseError,
    TResult Function(String errorMessage)? eventAlreadyExists,
    TResult Function(String errorMessage)? participantAlreadyExists,
    TResult Function(String errorMessage)? invalidEventName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseError<T> value) firebaseError,
    required TResult Function(_EventAlreadyExists<T> value) eventAlreadyExists,
    required TResult Function(_ParticipantAlreadyExists<T> value)
        participantAlreadyExists,
    required TResult Function(_InvalidEvent<T> value) invalidEventName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseError<T> value)? firebaseError,
    TResult? Function(_EventAlreadyExists<T> value)? eventAlreadyExists,
    TResult? Function(_ParticipantAlreadyExists<T> value)?
        participantAlreadyExists,
    TResult? Function(_InvalidEvent<T> value)? invalidEventName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseError<T> value)? firebaseError,
    TResult Function(_EventAlreadyExists<T> value)? eventAlreadyExists,
    TResult Function(_ParticipantAlreadyExists<T> value)?
        participantAlreadyExists,
    TResult Function(_InvalidEvent<T> value)? invalidEventName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseErrorImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$FirebaseErrorImplCopyWith(_$FirebaseErrorImpl<T> value,
          $Res Function(_$FirebaseErrorImpl<T>) then) =
      __$$FirebaseErrorImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FirebaseErrorImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$FirebaseErrorImpl<T>>
    implements _$$FirebaseErrorImplCopyWith<T, $Res> {
  __$$FirebaseErrorImplCopyWithImpl(_$FirebaseErrorImpl<T> _value,
      $Res Function(_$FirebaseErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FirebaseErrorImpl<T>(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirebaseErrorImpl<T> implements _FirebaseError<T> {
  const _$FirebaseErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ValueFailure<$T>.firebaseError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseErrorImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseErrorImplCopyWith<T, _$FirebaseErrorImpl<T>> get copyWith =>
      __$$FirebaseErrorImplCopyWithImpl<T, _$FirebaseErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) firebaseError,
    required TResult Function(String errorMessage) eventAlreadyExists,
    required TResult Function(String errorMessage) participantAlreadyExists,
    required TResult Function(String errorMessage) invalidEventName,
  }) {
    return firebaseError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? firebaseError,
    TResult? Function(String errorMessage)? eventAlreadyExists,
    TResult? Function(String errorMessage)? participantAlreadyExists,
    TResult? Function(String errorMessage)? invalidEventName,
  }) {
    return firebaseError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? firebaseError,
    TResult Function(String errorMessage)? eventAlreadyExists,
    TResult Function(String errorMessage)? participantAlreadyExists,
    TResult Function(String errorMessage)? invalidEventName,
    required TResult orElse(),
  }) {
    if (firebaseError != null) {
      return firebaseError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseError<T> value) firebaseError,
    required TResult Function(_EventAlreadyExists<T> value) eventAlreadyExists,
    required TResult Function(_ParticipantAlreadyExists<T> value)
        participantAlreadyExists,
    required TResult Function(_InvalidEvent<T> value) invalidEventName,
  }) {
    return firebaseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseError<T> value)? firebaseError,
    TResult? Function(_EventAlreadyExists<T> value)? eventAlreadyExists,
    TResult? Function(_ParticipantAlreadyExists<T> value)?
        participantAlreadyExists,
    TResult? Function(_InvalidEvent<T> value)? invalidEventName,
  }) {
    return firebaseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseError<T> value)? firebaseError,
    TResult Function(_EventAlreadyExists<T> value)? eventAlreadyExists,
    TResult Function(_ParticipantAlreadyExists<T> value)?
        participantAlreadyExists,
    TResult Function(_InvalidEvent<T> value)? invalidEventName,
    required TResult orElse(),
  }) {
    if (firebaseError != null) {
      return firebaseError(this);
    }
    return orElse();
  }
}

abstract class _FirebaseError<T> implements ValueFailure<T> {
  const factory _FirebaseError({required final String errorMessage}) =
      _$FirebaseErrorImpl<T>;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseErrorImplCopyWith<T, _$FirebaseErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventAlreadyExistsImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EventAlreadyExistsImplCopyWith(_$EventAlreadyExistsImpl<T> value,
          $Res Function(_$EventAlreadyExistsImpl<T>) then) =
      __$$EventAlreadyExistsImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$EventAlreadyExistsImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EventAlreadyExistsImpl<T>>
    implements _$$EventAlreadyExistsImplCopyWith<T, $Res> {
  __$$EventAlreadyExistsImplCopyWithImpl(_$EventAlreadyExistsImpl<T> _value,
      $Res Function(_$EventAlreadyExistsImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$EventAlreadyExistsImpl<T>(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventAlreadyExistsImpl<T> implements _EventAlreadyExists<T> {
  const _$EventAlreadyExistsImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ValueFailure<$T>.eventAlreadyExists(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventAlreadyExistsImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventAlreadyExistsImplCopyWith<T, _$EventAlreadyExistsImpl<T>>
      get copyWith => __$$EventAlreadyExistsImplCopyWithImpl<T,
          _$EventAlreadyExistsImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) firebaseError,
    required TResult Function(String errorMessage) eventAlreadyExists,
    required TResult Function(String errorMessage) participantAlreadyExists,
    required TResult Function(String errorMessage) invalidEventName,
  }) {
    return eventAlreadyExists(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? firebaseError,
    TResult? Function(String errorMessage)? eventAlreadyExists,
    TResult? Function(String errorMessage)? participantAlreadyExists,
    TResult? Function(String errorMessage)? invalidEventName,
  }) {
    return eventAlreadyExists?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? firebaseError,
    TResult Function(String errorMessage)? eventAlreadyExists,
    TResult Function(String errorMessage)? participantAlreadyExists,
    TResult Function(String errorMessage)? invalidEventName,
    required TResult orElse(),
  }) {
    if (eventAlreadyExists != null) {
      return eventAlreadyExists(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseError<T> value) firebaseError,
    required TResult Function(_EventAlreadyExists<T> value) eventAlreadyExists,
    required TResult Function(_ParticipantAlreadyExists<T> value)
        participantAlreadyExists,
    required TResult Function(_InvalidEvent<T> value) invalidEventName,
  }) {
    return eventAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseError<T> value)? firebaseError,
    TResult? Function(_EventAlreadyExists<T> value)? eventAlreadyExists,
    TResult? Function(_ParticipantAlreadyExists<T> value)?
        participantAlreadyExists,
    TResult? Function(_InvalidEvent<T> value)? invalidEventName,
  }) {
    return eventAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseError<T> value)? firebaseError,
    TResult Function(_EventAlreadyExists<T> value)? eventAlreadyExists,
    TResult Function(_ParticipantAlreadyExists<T> value)?
        participantAlreadyExists,
    TResult Function(_InvalidEvent<T> value)? invalidEventName,
    required TResult orElse(),
  }) {
    if (eventAlreadyExists != null) {
      return eventAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class _EventAlreadyExists<T> implements ValueFailure<T> {
  const factory _EventAlreadyExists({required final String errorMessage}) =
      _$EventAlreadyExistsImpl<T>;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$EventAlreadyExistsImplCopyWith<T, _$EventAlreadyExistsImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParticipantAlreadyExistsImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ParticipantAlreadyExistsImplCopyWith(
          _$ParticipantAlreadyExistsImpl<T> value,
          $Res Function(_$ParticipantAlreadyExistsImpl<T>) then) =
      __$$ParticipantAlreadyExistsImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ParticipantAlreadyExistsImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res,
        _$ParticipantAlreadyExistsImpl<T>>
    implements _$$ParticipantAlreadyExistsImplCopyWith<T, $Res> {
  __$$ParticipantAlreadyExistsImplCopyWithImpl(
      _$ParticipantAlreadyExistsImpl<T> _value,
      $Res Function(_$ParticipantAlreadyExistsImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ParticipantAlreadyExistsImpl<T>(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParticipantAlreadyExistsImpl<T>
    implements _ParticipantAlreadyExists<T> {
  const _$ParticipantAlreadyExistsImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ValueFailure<$T>.participantAlreadyExists(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantAlreadyExistsImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantAlreadyExistsImplCopyWith<T, _$ParticipantAlreadyExistsImpl<T>>
      get copyWith => __$$ParticipantAlreadyExistsImplCopyWithImpl<T,
          _$ParticipantAlreadyExistsImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) firebaseError,
    required TResult Function(String errorMessage) eventAlreadyExists,
    required TResult Function(String errorMessage) participantAlreadyExists,
    required TResult Function(String errorMessage) invalidEventName,
  }) {
    return participantAlreadyExists(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? firebaseError,
    TResult? Function(String errorMessage)? eventAlreadyExists,
    TResult? Function(String errorMessage)? participantAlreadyExists,
    TResult? Function(String errorMessage)? invalidEventName,
  }) {
    return participantAlreadyExists?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? firebaseError,
    TResult Function(String errorMessage)? eventAlreadyExists,
    TResult Function(String errorMessage)? participantAlreadyExists,
    TResult Function(String errorMessage)? invalidEventName,
    required TResult orElse(),
  }) {
    if (participantAlreadyExists != null) {
      return participantAlreadyExists(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseError<T> value) firebaseError,
    required TResult Function(_EventAlreadyExists<T> value) eventAlreadyExists,
    required TResult Function(_ParticipantAlreadyExists<T> value)
        participantAlreadyExists,
    required TResult Function(_InvalidEvent<T> value) invalidEventName,
  }) {
    return participantAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseError<T> value)? firebaseError,
    TResult? Function(_EventAlreadyExists<T> value)? eventAlreadyExists,
    TResult? Function(_ParticipantAlreadyExists<T> value)?
        participantAlreadyExists,
    TResult? Function(_InvalidEvent<T> value)? invalidEventName,
  }) {
    return participantAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseError<T> value)? firebaseError,
    TResult Function(_EventAlreadyExists<T> value)? eventAlreadyExists,
    TResult Function(_ParticipantAlreadyExists<T> value)?
        participantAlreadyExists,
    TResult Function(_InvalidEvent<T> value)? invalidEventName,
    required TResult orElse(),
  }) {
    if (participantAlreadyExists != null) {
      return participantAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class _ParticipantAlreadyExists<T> implements ValueFailure<T> {
  const factory _ParticipantAlreadyExists(
      {required final String errorMessage}) = _$ParticipantAlreadyExistsImpl<T>;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ParticipantAlreadyExistsImplCopyWith<T, _$ParticipantAlreadyExistsImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEventImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEventImplCopyWith(_$InvalidEventImpl<T> value,
          $Res Function(_$InvalidEventImpl<T>) then) =
      __$$InvalidEventImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$InvalidEventImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEventImpl<T>>
    implements _$$InvalidEventImplCopyWith<T, $Res> {
  __$$InvalidEventImplCopyWithImpl(
      _$InvalidEventImpl<T> _value, $Res Function(_$InvalidEventImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$InvalidEventImpl<T>(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEventImpl<T> implements _InvalidEvent<T> {
  const _$InvalidEventImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEventName(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEventImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEventImplCopyWith<T, _$InvalidEventImpl<T>> get copyWith =>
      __$$InvalidEventImplCopyWithImpl<T, _$InvalidEventImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) firebaseError,
    required TResult Function(String errorMessage) eventAlreadyExists,
    required TResult Function(String errorMessage) participantAlreadyExists,
    required TResult Function(String errorMessage) invalidEventName,
  }) {
    return invalidEventName(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? firebaseError,
    TResult? Function(String errorMessage)? eventAlreadyExists,
    TResult? Function(String errorMessage)? participantAlreadyExists,
    TResult? Function(String errorMessage)? invalidEventName,
  }) {
    return invalidEventName?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? firebaseError,
    TResult Function(String errorMessage)? eventAlreadyExists,
    TResult Function(String errorMessage)? participantAlreadyExists,
    TResult Function(String errorMessage)? invalidEventName,
    required TResult orElse(),
  }) {
    if (invalidEventName != null) {
      return invalidEventName(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseError<T> value) firebaseError,
    required TResult Function(_EventAlreadyExists<T> value) eventAlreadyExists,
    required TResult Function(_ParticipantAlreadyExists<T> value)
        participantAlreadyExists,
    required TResult Function(_InvalidEvent<T> value) invalidEventName,
  }) {
    return invalidEventName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseError<T> value)? firebaseError,
    TResult? Function(_EventAlreadyExists<T> value)? eventAlreadyExists,
    TResult? Function(_ParticipantAlreadyExists<T> value)?
        participantAlreadyExists,
    TResult? Function(_InvalidEvent<T> value)? invalidEventName,
  }) {
    return invalidEventName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseError<T> value)? firebaseError,
    TResult Function(_EventAlreadyExists<T> value)? eventAlreadyExists,
    TResult Function(_ParticipantAlreadyExists<T> value)?
        participantAlreadyExists,
    TResult Function(_InvalidEvent<T> value)? invalidEventName,
    required TResult orElse(),
  }) {
    if (invalidEventName != null) {
      return invalidEventName(this);
    }
    return orElse();
  }
}

abstract class _InvalidEvent<T> implements ValueFailure<T> {
  const factory _InvalidEvent({required final String errorMessage}) =
      _$InvalidEventImpl<T>;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEventImplCopyWith<T, _$InvalidEventImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
