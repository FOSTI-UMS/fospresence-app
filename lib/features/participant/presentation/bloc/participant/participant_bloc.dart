// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/participant/domain/entities/participant/participant_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/commons/widgets/custom_toast_w_border.dart';
import '../../../../my_app.dart';
import '../../../domain/usecases/create_participant_use_case.dart';
import '../../../domain/usecases/delete_participant_use_case.dart';
import '../../../domain/usecases/get_participant_use_case.dart';

part 'participant_event.dart';
part 'participant_state.dart';
part 'participant_bloc.freezed.dart';

class ParticipantBloc extends Bloc<ParticipantEvent, ParticipantState> {
  final GetParticipantsUseCase getParticipantsUseCase;
  final CreateParticipantUseCase createParticipantUseCase;
  final DeleteParticipantUseCase deleteParticipantUseCase;
  ParticipantBloc(
      {required this.createParticipantUseCase,
      required this.getParticipantsUseCase,
      required this.deleteParticipantUseCase})
      : super(ParticipantState.started()) {
    on<ParticipantEvent>(
      (event, emit) async {
        await event.map(
          getParticipants: (value) async => await _getParticipants(),
          createParticipant: (value) async =>
              await _createParticipant(value.participant, value.event),
          deleteParticipantPressed: (value) async =>
              await _deleteParticipant(value.participant),
        );
      },
    );
  }

  Future<void> _deleteParticipant(ParticipantEntity participant) async {
    emit(state.copyWith(failureOrSuccess: none()));

    final result = await deleteParticipantUseCase(params: participant);
    final participantList = await getParticipantsUseCase(params: null);

    emit(
      state.copyWith(
        failureOrSuccess: some(result),
        participantList: some(participantList),
      ),
    );

    _showToast(
        result: result,
        successMessage: "Berhasil menghapus ${participant.name}");
  }

  Future<void> _getParticipants() async {
    emit(state.copyWith(isLoading: true));

    await Future.delayed(const Duration(seconds: 3));
    final participantList = await getParticipantsUseCase(params: null);

    emit(
      state.copyWith(
        isLoading: false,
        participantList: some(participantList),
      ),
    );
  }

  Future<void> _createParticipant(
      ParticipantEntity participant, Map<String, Object?>? event) async {
    emit(state.copyWith(isLoading: true, failureOrSuccess: none()));

    final result =
        await createParticipantUseCase(params: participant, event: event);
    final participantList = await getParticipantsUseCase(params: null);
    emit(
      state.copyWith(
        isLoading: false,
        failureOrSuccess: some(result),
        participantList: some(participantList),
      ),
    );

    _showToast(
        result: result,
        successMessage: "Berhasil menambahkan ${participant.name}");
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
