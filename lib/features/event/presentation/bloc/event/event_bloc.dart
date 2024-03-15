// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fospresence/core/commons/widgets/custom_toast_w_border.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/event/domain/usecases/create_event_use_case.dart';
import 'package:fospresence/features/event/domain/usecases/delete_event_use_case.dart';
import 'package:fospresence/features/event/domain/usecases/edit_event_use_case.dart';
import 'package:fospresence/features/event/domain/usecases/get_events_use_case.dart';
import 'package:fospresence/features/participant/domain/entities/participant/participant_entity.dart';
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
  EventBloc({
    required this.createEventUseCase,
    required this.getEventsUseCase,
    required this.editEventUseCase,
    required this.deleteEventUseCase,
  }) : super(EventState.started()) {
    on<EventEvent>(
      (event, emit) async {
        event.map(
            getEvents: (value) async => await _getEvents(),
            createEventPressed: (value) async =>
                await _createEvent(value.event),
            editEventPressed: (value) async => await _editEvent(value.event),
            deleteEventPressed: (value) async =>
                await _deleteEvent(value.event),
            searchEvent: (value) => _searchEvent(value.searchText),
            selectedEventPressed: (value) =>
                emit(state.copyWith(selectedEvent: value.event)),
            showEasterEgg: (value) => emit(state.copyWith(whose: value.whose)));
      },
    );
  }

  void _searchEvent(String searchText) {
    final query = searchText.toLowerCase();
    final searchResult = state.eventList.fold<List<EventEntity>>(
      () => [],
      (eitherList) => eitherList.fold(
        (_) => [],
        (events) {
          return events.where((event) {
            final name = event.name.toLowerCase();
            return name.contains(query);
          }).toList();
        },
      ),
    );
    emit(state.copyWith(searchEventResult: searchResult));
  }

  Future<void> _editEvent(EventEntity event) async {
    emit(state.copyWith(isLoading: true, failureOrSuccess: none()));

    final result = await editEventUseCase(params: event);
    final eventList = await getEventsUseCase();

    emit(
      state.copyWith(
        isLoading: false,
        failureOrSuccess: some(result),
        eventList: some(eventList),
        searchEventResult: _getEventListUpdated(eventList),
      ),
    );

    _showToast(
        result: result, successMessage: "Berhasil memperbarui ${event.name}");
  }

  Future<void> _deleteEvent(EventEntity event) async {
    emit(state.copyWith(failureOrSuccess: none()));

    final result = await deleteEventUseCase(params: event);
    final eventList = await getEventsUseCase();

    emit(
      state.copyWith(
        failureOrSuccess: some(result),
        eventList: some(eventList),
        searchEventResult: _getEventListUpdated(eventList),
      ),
    );

    _showToast(
        result: result, successMessage: "Berhasil menghapus ${event.name}");
  }

  Future<void> _getEvents() async {
    emit(state.copyWith(isLoading: true));

    await Future.delayed(const Duration(milliseconds: 1500));
    final eventList = await getEventsUseCase();

    emit(
      state.copyWith(
        isLoading: false,
        eventList: some(eventList),
        searchEventResult: _getEventListUpdated(eventList),
      ),
    );
  }

  Future<void> _createEvent(EventEntity event) async {
    emit(state.copyWith(isLoading: true, failureOrSuccess: none()));

    final result = await createEventUseCase(params: event);
    final eventList = await getEventsUseCase();

    emit(
      state.copyWith(
        isLoading: false,
        failureOrSuccess: some(result),
        eventList: some(eventList),
        searchEventResult: _getEventListUpdated(eventList),
      ),
    );

    _showToast(
        result: result, successMessage: "Berhasil menambahkan ${event.name}");
  }

  void _showToast(
      {required Either<ValueFailure<String>, void> result,
      required String successMessage}) {
    result.fold(
      (failure) {
        final errorMessage = failure.whenOrNull(
          invalidEventName: (errorMessage) => errorMessage,
          firebaseError: (errorMessage) => errorMessage,
          eventAlreadyExists: (errorMessage) => errorMessage,
        );

        fToast.showToast(
          child: CustomToastWithBorder(
              message: errorMessage ?? "Unknown error", isSuccess: false),
          gravity: ToastGravity.BOTTOM,
        );
      },
      (success) {
        fToast.showToast(
          child:
              CustomToastWithBorder(message: successMessage, isSuccess: true),
          gravity: ToastGravity.BOTTOM,
        );
      },
    );
  }

  List<EventEntity> _getEventListUpdated(
      Either<ValueFailure<String>, List<EventEntity>> participantList) {
    return participantList.fold((_) => [], (r) => r);
  }
}
