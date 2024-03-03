import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class AddEventFailure with _$AddEventFailure {
  const factory AddEventFailure.serverError() = _ServerError;
  const factory AddEventFailure.eventAlreadyExists() = _EventAlreadyExists;
}
