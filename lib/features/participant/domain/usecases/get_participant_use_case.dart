import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/participant/participant_entity.dart';
import '../repositories/participant_repository.dart';

class GetParticipantsUseCase extends UseCase<
    Either<ValueFailure<String>, List<ParticipantEntity>>, ParticipantEntity> {
  final ParticipantRespository participantRespository;

  GetParticipantsUseCase({required this.participantRespository});
  @override
  Future<Either<ValueFailure<String>, List<ParticipantEntity>>> call(
          {required void params}) async =>
      await participantRespository.getParticipants();
}
