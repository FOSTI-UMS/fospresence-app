// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/participant/domain/entities/participant/participant_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/commons/widgets/custom_toast_w_border.dart';
import '../../../../event/domain/entities/event/event_entity.dart';
import '../../../domain/usecases/add_participant_to_event_use_case.dart';
import '../../../../my_app.dart';
import '../../../domain/usecases/delete_participant_use_case.dart';
import '../../../domain/usecases/get_participant_use_case.dart';

part 'participant_event.dart';
part 'participant_state.dart';
part 'participant_bloc.freezed.dart';

class ParticipantBloc extends Bloc<ParticipantEvent, ParticipantState> {
  final GetParticipantsUseCase getParticipantsUseCase;
  final DeleteParticipantUseCase deleteParticipantUseCase;
  final AddParticipantToEventUseCase addParticipantToEventUseCase;
  ParticipantBloc(
      {required this.getParticipantsUseCase,
      required this.deleteParticipantUseCase,
      required this.addParticipantToEventUseCase})
      : super(ParticipantState.started()) {
    on<ParticipantEvent>(
      (event, emit) async {
        event.map(
          getParticipants: (value) async => await _getParticipants(value.event),
          deleteParticipantPressed: (value) async =>
              await _deleteParticipant(value.participant, value.event),
          addParticipantToEvent: (value) async =>
              _addParticipant(value.event, value.participant),
          searchParticipant: (value) async =>
              _searchParticipant(value.searchText),
          selectedParticipantPressed: (value) =>
              emit(state.copyWith(selectedParticipant: value.participant)),
        );
      },
    );
  }

  void _searchParticipant(String searchText) {
    final query = searchText.toLowerCase();
    final searchResult = state.participantList.fold<List<ParticipantEntity>>(
      () => [],
      (eitherList) => eitherList.fold(
        (_) => [],
        (participants) {
          return participants.where((participant) {
            final name = participant.name.toLowerCase();
            return name.contains(query);
          }).toList();
        },
      ),
    );
    emit(
      state.copyWith(
        searchParticipantResult: searchResult,
      ),
    );
  }

  Future<void> _addParticipant(
      EventEntity event, ParticipantEntity participant) async {
    emit(state.copyWith(failureOrSuccess: none()));

    final result = await addParticipantToEventUseCase(
        event: event, participant: participant);
    final participantList = await getParticipantsUseCase(params: event);
    List<ParticipantEntity> participantListResult =
        participantList.fold((_) => [], (r) => r);

    emit(
      state.copyWith(
          isLoading: false,
          failureOrSuccess: some(result),
          participantList: some(participantList),
          searchParticipantResult: participantListResult),
    );

    _showToast(
        result: result,
        successMessage: "Berhasil menambahkan ${participant.name}");
  }

  Future<void> _deleteParticipant(
      ParticipantEntity participant, EventEntity event) async {
    emit(state.copyWith(failureOrSuccess: none()));

    final result =
        await deleteParticipantUseCase(participant: participant, event: event);
    final participantList = await getParticipantsUseCase(params: event);
    List<ParticipantEntity> participantListResult =
        participantList.fold((_) => [], (r) => r);

    emit(
      state.copyWith(
          failureOrSuccess: some(result),
          participantList: some(participantList),
          searchParticipantResult: participantListResult),
    );

    _showToast(
        result: result,
        successMessage: "Berhasil menghapus ${participant.name}");
  }

  Future<void> _getParticipants(EventEntity event) async {
    emit(state.copyWith(isLoading: true));

    await Future.delayed(const Duration(milliseconds: 1500));
    final participantList = await getParticipantsUseCase(params: event);
    List<ParticipantEntity> participantListResult =
        participantList.fold((_) => [], (r) => r);

    emit(
      state.copyWith(
          isLoading: false,
          participantList: some(participantList),
          searchParticipantResult: participantListResult),
    );
  }

  void _showToast(
      {required Either<ValueFailure<String>, void> result,
      required String successMessage}) {
    result.fold(
      (failure) {
        final errorMessage = failure.whenOrNull(
          firebaseError: (errorMessage) => errorMessage,
          participantAlreadyExists: (errorMessage) => errorMessage,
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
}
