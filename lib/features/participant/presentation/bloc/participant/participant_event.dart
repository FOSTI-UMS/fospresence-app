part of 'participant_bloc.dart';

@freezed
class ParticipantEvent with _$ParticipantEvent {
  const factory ParticipantEvent.initial() = _Initial;
  const factory ParticipantEvent.createEvent(
      {required String name, required String event}) = _CreateEvent;
}
