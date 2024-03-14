part of 'participant_bloc.dart';

@freezed
class ParticipantEvent with _$ParticipantEvent {
  const factory ParticipantEvent.getParticipants({required EventEntity event}) =
      _GetParticipants;
  const factory ParticipantEvent.createParticipant(
      {required ParticipantEntity participant,
      required EventEntity event}) = _CreateParticipant;
  const factory ParticipantEvent.deleteParticipantPressed(
      {required ParticipantEntity participant,
      required EventEntity event}) = _DeteleParticipantPressed;
  const factory ParticipantEvent.addParticipantToEvent(
      {required EventEntity event,
      required ParticipantEntity participant}) = _AddParticipantToEventEvent;
}
