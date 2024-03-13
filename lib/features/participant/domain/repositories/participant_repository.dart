import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/participant/participant_entity.dart';

abstract class ParticipantRespository {
  Future<Either<ValueFailure<String>, List<ParticipantEntity>>>
      getParticipants();
  Future<Either<ValueFailure<String>, void>> createParticipant(
      {required ParticipantEntity participant, Map<String, Object?>? event});
  Future<Either<ValueFailure<String>, void>> deleteParticipant({
    required ParticipantEntity participant,
  });
}
