part of 'event_bloc.dart';

@freezed
class EventEvent with _$EventEvent {
  const factory EventEvent.getEvents() = _GetEvents;
  const factory EventEvent.createEventPressed({required EventEntity event}) =
      _CreateEventPressed;
  const factory EventEvent.deleteEventPressed({required EventEntity event}) =
      _DeteleEventPressed;
}
