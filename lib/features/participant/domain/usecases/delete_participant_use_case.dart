import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/participant/participant_entity.dart';
import '../repositories/participant_repository.dart';

class DeleteParticipantUseCase
    extends UseCase<Either<ValueFailure<String>, void>, ParticipantEntity> {
  final ParticipantRespository participantRespository;

  DeleteParticipantUseCase({required this.participantRespository});
  @override
  Future<Either<ValueFailure<String>, void>> call(
          {required ParticipantEntity params}) async =>
      await participantRespository.deleteParticipant(participant: params);
}
