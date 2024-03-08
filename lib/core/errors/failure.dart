import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.firebaseError({required String errorMessage}) = _FirebaseError<T>;
  const factory ValueFailure.eventAlreadyExists({required String errorMessage}) = _EventAlreadyExists<T>;
  const factory ValueFailure.invalidEventName({required String errorMessage}) =
      _InvalidEvent<T>;
}
