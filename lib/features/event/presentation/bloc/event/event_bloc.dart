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
  final DeleteEventUseCase eventUseCase;

  EventBloc(
      {required this.createEventUseCase,
      required this.getEventsUseCase,
      required this.editEventUseCase,
      required this.eventUseCase})
      : super(EventState.started()) {
    on<EventEvent>(
      (event, emit) async {
        await event.map(
            initial: (value) async {
              emit(
                state.copyWith(
                  isLoading: false,
                  isLoaded: false,
                  failureOrSuccess: none(),
                ),
              );
            },
            createEventPressed: (value) async =>
                _createEventPressedFunction(value.event));
      },
    );
  }

  Future<void> _createEventPressedFunction(EventEntity params) async {
    emit(state.copyWith(isLoading: true));

    final result = await createEventUseCase(params: params);

    emit(
      state.copyWith(
        isLoading: false,
        isLoaded: true,
        failureOrSuccess: optionOf(result),
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
          child: const CustomToast(
              message: "Successfully added an event", isSuccess: true),
          gravity: ToastGravity.BOTTOM,
        );
      },
    );
  }
}
