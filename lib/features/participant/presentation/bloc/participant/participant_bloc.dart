// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide OpenFile;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/participant/domain/entities/participant/participant_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';

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
          addParticipantsToExcel: (value) =>
              _addParticipantsToExcel(value.event),
        );
      },
    );
  }

  Future<void> _addParticipantsToExcel(EventEntity event) async {
    final participantList = await getParticipantsUseCase(params: event);
    final participantListUpdated = _getParticipantListUpdated(participantList);

    if (participantListUpdated.isNotEmpty) {
      final Workbook workbook = Workbook();
      final Worksheet sheet = workbook.worksheets[0];
      sheet.getRangeByIndex(1, 1).setText("No");
      sheet.getRangeByIndex(1, 2).setText("Nama");
      sheet.getRangeByIndex(1, 3).setText("Email");
      sheet.getRangeByIndex(1, 4).setText("Divisi");
      sheet.getRangeByIndex(1, 5).setText("Waktu Presensi");

      for (int i = 0; i < participantListUpdated.length; i++) {
        final participant = participantListUpdated[i];
        String hour = participant.datetime.hour.toString().padLeft(2, '0');
        String minute = participant.datetime.minute.toString().padLeft(2, '0');
        String formattedTime = '$hour:$minute';
        sheet.getRangeByIndex(i + 2, 1).setText("${i + 1}");
        sheet.getRangeByIndex(i + 2, 2).setText(participant.name);
        sheet.getRangeByIndex(i + 2, 3).setText(participant.email);
        sheet
            .getRangeByIndex(i + 2, 4)
            .setText(participant.division.toUpperCase());
        sheet.getRangeByIndex(i + 2, 5).setText(formattedTime);
      }
      Directory? downloadsDirectory = await getApplicationSupportDirectory();
      final String path = downloadsDirectory.path;
      final String eventDate =
          "${event.datetime.day}-${event.datetime.month}-${event.datetime.year}";
      final String fileName = "$path/${event.name}_$eventDate.xlsx";
      final File file = File(fileName);
      if (await file.exists()) {
        await file.delete();
      }
      final List<int> bytes = workbook.saveAsStream();
      await file.writeAsBytes(bytes, flush: true);
      OpenFile.open(fileName);
      workbook.dispose();
    }
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
    emit(state.copyWith(searchParticipantResult: searchResult));
  }

  Future<void> _addParticipant(
      EventEntity event, ParticipantEntity participant) async {
    emit(state.copyWith(failureOrSuccess: none()));

    final result = await addParticipantToEventUseCase(
        event: event, participant: participant);
    final participantList = await getParticipantsUseCase(params: event);

    emit(
      state.copyWith(
          isLoading: false,
          failureOrSuccess: some(result),
          participantList: some(participantList),
          searchParticipantResult: _getParticipantListUpdated(participantList)),
    );
    String participantName = participant.name.toLowerCase().split(' ').map(
      (word) {
        return word.isNotEmpty ? word[0].toUpperCase() + word.substring(1) : "";
      },
    ).join(' ');
    _showToast(
        result: result,
        successMessage: "Berhasil menambahkan $participantName");
  }

  Future<void> _deleteParticipant(
      ParticipantEntity participant, EventEntity event) async {
    emit(state.copyWith(failureOrSuccess: none()));

    final result =
        await deleteParticipantUseCase(participant: participant, event: event);
    final participantList = await getParticipantsUseCase(params: event);

    emit(
      state.copyWith(
          failureOrSuccess: some(result),
          participantList: some(participantList),
          searchParticipantResult: _getParticipantListUpdated(participantList)),
    );

    _showToast(
        result: result,
        successMessage: "Berhasil menghapus ${participant.name}");
  }

  Future<void> _getParticipants(EventEntity event) async {
    emit(state.copyWith(isLoading: true));

    await Future.delayed(const Duration(milliseconds: 1500));
    final participantList = await getParticipantsUseCase(params: event);

    emit(
      state.copyWith(
          isLoading: false,
          participantList: some(participantList),
          searchParticipantResult: _getParticipantListUpdated(participantList)),
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

  List<ParticipantEntity> _getParticipantListUpdated(
      Either<ValueFailure<String>, List<ParticipantEntity>> participantList) {
    return participantList.fold((_) => [], (r) => r);
  }
}
