import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../../../event/domain/entities/event/event_entity.dart';
import '../entities/participant/participant_entity.dart';

abstract class ParticipantRespository {
  Future<Either<ValueFailure<String>, List<ParticipantEntity>>> getParticipants(
      {required EventEntity event});
  Future<Either<ValueFailure<String>, void>> deleteParticipant({
    required ParticipantEntity participant,required EventEntity event
  });
    Future<Either<ValueFailure<String>, void>> addParticipantToEvent(
      {required EventEntity event, required ParticipantEntity participant});
}
