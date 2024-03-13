import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/core/usecase/usecase.dart';
import '../entities/participant/participant_entity.dart';
import '../repositories/participant_repository.dart';

class CreateParticipantUseCase
    extends UseCase<Either<ValueFailure<String>, void>, ParticipantEntity> {
  final ParticipantRespository participantRespository;

  CreateParticipantUseCase({required this.participantRespository});
  @override
  Future<Either<ValueFailure<String>, void>> call(
          {required ParticipantEntity params,  Map<String, Object?>? event}) async =>
      await participantRespository.createParticipant(participant: params, event: event);
}
