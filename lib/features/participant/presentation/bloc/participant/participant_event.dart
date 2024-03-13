part of 'participant_bloc.dart';

@freezed
class ParticipantEvent with _$ParticipantEvent {
  const factory ParticipantEvent.getParticipants() = _GetParticipants;
  const factory ParticipantEvent.createParticipant(
      {required ParticipantEntity participant,
      Map<String, Object?>? event}) = _CreateParticipant;
  const factory ParticipantEvent.deleteParticipantPressed(
      {required ParticipantEntity participant}) = _DeteleParticipantPressed;
}
