import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_event.dart';
part 'event_state.dart';

part 'event_bloc.freezed.dart';

class EventBlocBloc extends Bloc<EventEvent, EventState> {
  EventBlocBloc() : super(EventState.started()) {
    on<EventEvent>(
      (event, emit) {
        if (event is _CreateEvent) {
          state.copyWith(
              isLoading: true, isLoaded: false, failureOrSuccess: none());
        }
      },
    );
  }
}
