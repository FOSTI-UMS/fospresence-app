part of 'event_bloc.dart';

@freezed
class EventEvent with _$EventEvent {
  const factory EventEvent.initial() = _Initial;
  const factory EventEvent.createEventPressed(
      {required EventEntity event}) = _CreateEventPressed;
}
