part of 'add_event_bloc.dart';

@freezed
class AddEventEvent with _$AddEventEvent {
  const factory AddEventEvent.initial() = _Initial;
  const factory AddEventEvent.createEvent(
      {required String name, required DateTime date}) = _CreateEvent;
}
