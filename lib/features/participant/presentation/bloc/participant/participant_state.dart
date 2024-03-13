part of 'participant_bloc.dart';

@freezed
class ParticipantState with _$ParticipantState {
  const ParticipantState._();
  const factory ParticipantState(
      {required bool isLoading,
      required Option<Either<ValueFailure<String>, dynamic>> failureOrSuccess,
      required Option<Either<ValueFailure<String>, List<ParticipantEntity>>>
          participantList}) = _ParticipantState;
  factory ParticipantState.started() => ParticipantState(
        isLoading: false,
        failureOrSuccess: none(),
        participantList: none(),
      );
}
