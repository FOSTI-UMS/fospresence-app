import '../../../domain/entities/participant/participant_entity.dart';

abstract class ParticipantRemoteDataSource {
  Future<void> createParticipant({required ParticipantEntity participant});
  Future<void> deleteParticipant({required ParticipantEntity participant});
  Future<List<ParticipantEntity>> getParticipants();
}
