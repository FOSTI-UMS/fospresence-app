import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import '../../../event/domain/entities/event/event_entity.dart';
import '../entities/participant/participant_entity.dart';
import '../repositories/participant_repository.dart';

class DeleteParticipantUseCase {
  final ParticipantRespository participantRespository;

  DeleteParticipantUseCase({required this.participantRespository});
  Future<Either<ValueFailure<String>, void>> call(
          {required ParticipantEntity participant,
          required EventEntity event}) async =>
      await participantRespository.deleteParticipant(
          participant: participant, event: event);
}
