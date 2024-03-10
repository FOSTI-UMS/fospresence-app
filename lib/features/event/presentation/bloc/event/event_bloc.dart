// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fospresence/core/commons/widgets/custom_toast.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/event/domain/usecases/create_event_use_case.dart';
import 'package:fospresence/features/event/domain/usecases/delete_event_use_case.dart';
import 'package:fospresence/features/event/domain/usecases/edit_event_use_case.dart';
import 'package:fospresence/features/event/domain/usecases/get_events_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../my_app.dart';

part 'event_event.dart';
part 'event_state.dart';

part 'event_bloc.freezed.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  final GetEventsUseCase getEventsUseCase;
  final CreateEventUseCase createEventUseCase;
  final EditEventUseCase editEventUseCase;
  final DeleteEventUseCase deleteEventUseCase;
  EventBloc(
      {required this.createEventUseCase,
      required this.getEventsUseCase,
      required this.editEventUseCase,
      required this.deleteEventUseCase})
      : super(EventState.started()) {
    on<EventEvent>(
      (event, emit) async {
        await event.map(
          getEvents: (value) async => await _getEvents(),
          createEventPressed: (value) async => await _createEvent(value.event),
          deleteEventPressed: (value) async => await deleteEvent(value.event),
        );
      },
    );
  }

  Future<void> deleteEvent(EventEntity event) async {
    emit(state.copyWith(isLoading: true, failureOrSuccess: none()));

    final result = await deleteEventUseCase(params: event);
    final eventList = await getEventsUseCase(params: null);

    emit(
      state.copyWith(
          isLoading: false,
          failureOrSuccess: some(result),
          eventList: some(eventList)),
    );

    result.fold(
      (failure) {
        final errorMessage = failure.whenOrNull(
          invalidEventName: (errorMessage) => errorMessage,
          firebaseError: (errorMessage) => errorMessage,
          eventAlreadyExists: (errorMessage) => errorMessage,
        );

        fToast.showToast(
          child: CustomToast(
              message: errorMessage ?? "Unknown error", isSuccess: false),
          gravity: ToastGravity.BOTTOM,
        );
      },
      (success) {
        fToast.showToast(
          child: CustomToast(
              message: "Successfully deleted ${event.name}", isSuccess: true),
          gravity: ToastGravity.BOTTOM,
        );
      },
    );
  }

  Future<void> _getEvents() async {
    emit(state.copyWith(isLoading: true));

    final eventList = await getEventsUseCase(params: null);

    emit(
      state.copyWith(
        isLoading: false,
        eventList: some(eventList),
      ),
    );
  }

  Future<void> _createEvent(EventEntity event) async {
    emit(state.copyWith(isLoading: true));

    final result = await createEventUseCase(params: event);
    final eventList = await getEventsUseCase(params: null);

    emit(
      state.copyWith(
        isLoading: false,
        failureOrSuccess: some(result),
        eventList: some(eventList),
      ),
    );

    result.fold(
      (failure) {
        final errorMessage = failure.whenOrNull(
          invalidEventName: (errorMessage) => errorMessage,
          firebaseError: (errorMessage) => errorMessage,
          eventAlreadyExists: (errorMessage) => errorMessage,
        );

        fToast.showToast(
          child: CustomToast(
              message: errorMessage ?? "Unknown error", isSuccess: false),
          gravity: ToastGravity.BOTTOM,
        );
      },
      (success) {
        fToast.showToast(
          child: CustomToast(
              message: "Successfully added ${event.name}", isSuccess: true),
          gravity: ToastGravity.BOTTOM,
        );
      },
    );
  }
}
