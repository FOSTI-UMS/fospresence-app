part of 'add_event_bloc.dart';

@freezed
class AddEventState with _$AddEventState {
  const factory AddEventState({
    required String input,
    required DateTime date,
  })= _AddEventState;
  const factory AddEventState.started() = _Started;
}
