part of 'participant_bloc.dart';

@freezed
class ParticipantState with _$ParticipantState {
  const ParticipantState._();
  const factory ParticipantState({
    required bool isLoading,
    required Option<Either<ValueFailure<String>, ParticipantEntity>> failureOrSuccess,
    required bool isLoaded,
  }) = _ParticipantState;
  factory ParticipantState.started() =>
      ParticipantState(isLoading: false, isLoaded: false, failureOrSuccess: none());
}
