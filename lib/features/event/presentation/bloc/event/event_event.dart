part of 'event_bloc.dart';

@freezed
class EventEvent with _$EventEvent {
  const factory EventEvent.initial() = _Initial;
  const factory EventEvent.createEvent(
      {required String name, required DateTime date}) = _CreateEvent;
}
