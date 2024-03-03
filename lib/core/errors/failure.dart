import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.serverError() = _ServerError<T>;
  const factory ValueFailure.eventAlreadyExists() = _EventAlreadyExists<T>;
  const factory ValueFailure.invalidEventName({required String failedValue}) =
      _InvalidEvent<T>;
}
