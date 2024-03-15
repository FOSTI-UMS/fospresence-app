import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/participant/domain/entities/participant/participant_entity.dart';
import 'package:fospresence/features/participant/domain/repositories/participant_repository.dart';

class AddParticipantToEventUseCase {
  final ParticipantRespository participantRespository;

  AddParticipantToEventUseCase({required this.participantRespository});
  Future<Either<ValueFailure<String>, void>> call(
          {required EventEntity event,
          required ParticipantEntity participant}) async =>
      await participantRespository.addParticipantToEvent(
          event: event, participant: participant);
}
