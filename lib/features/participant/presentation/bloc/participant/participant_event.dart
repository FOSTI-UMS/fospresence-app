part of 'participant_bloc.dart';

@freezed
class ParticipantEvent with _$ParticipantEvent {
  const factory ParticipantEvent.getParticipants({required EventEntity event}) =
      _GetParticipants;
  const factory ParticipantEvent.deleteParticipantPressed(
      {required ParticipantEntity participant,
      required EventEntity event}) = _DeteleParticipantPressed;
  const factory ParticipantEvent.addParticipantToEvent(
      {required EventEntity event,
      required ParticipantEntity participant}) = _AddParticipantToEventEvent;
  const factory ParticipantEvent.selectedParticipantPressed(
      {required ParticipantEntity participant}) = _SelectedParticipantPressed;
  const factory ParticipantEvent.searchParticipant(
      {required String searchText}) = _SearchParticipant;
}
