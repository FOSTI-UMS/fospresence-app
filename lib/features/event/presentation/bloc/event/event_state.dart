part of 'event_bloc.dart';

@freezed
class EventState with _$EventState {
  const EventState._();
  const factory EventState({
    required bool isLoading,
    required Option<Either<ValueFailure<String>, dynamic>>
        failureOrSuccess,
    required Option<Either<ValueFailure<String>, List<EventEntity>>>eventList,
    required EventEntity? selectedEvent,
    required Option<Either<ValueFailure<String>,List<ParticipantEntity>>> participantList,
        required List<EventEntity> searchEventResult,
  }) = _EventState;
  factory EventState.started() => EventState(
        isLoading: false,
        failureOrSuccess: none(),
        eventList: none(),
        selectedEvent: null,
        participantList: none(),
        searchEventResult: []
      );
}
