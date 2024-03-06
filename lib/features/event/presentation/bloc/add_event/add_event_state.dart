part of 'add_event_bloc.dart';

@freezed
class AddEventState with _$AddEventState {
  const AddEventState._();
  const factory AddEventState({
    required bool isLoading,
    required Option<Either<ValueFailure<String>, EventEntity>> failureOrSuccess,
    required bool isLoaded,
  }) = _AddEventState;
  factory AddEventState.started() => AddEventState(
        isLoading: false,
        failureOrSuccess: none(),
        isLoaded: false,
      );
}
