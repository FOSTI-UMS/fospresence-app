part of 'event_bloc.dart';

@freezed
class EventState with _$EventState {
  const EventState._();
  const factory EventState({
    required bool isLoading,
    required Option<Either<ValueFailure<String>, Set<Set<void>>>>
        failureOrSuccess,
    required bool isLoaded,
  }) = _EventState;
  factory EventState.started() => EventState(
        isLoading: false,
        failureOrSuccess: none(),
        isLoaded: false,
      );
}
