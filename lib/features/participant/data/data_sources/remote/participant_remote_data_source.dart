
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';

import '../../../domain/entities/participant/participant_entity.dart';

abstract class ParticipantRemoteDataSource {
  Future<void> deleteParticipant({required ParticipantEntity participant,required EventEntity event});
  Future<List<ParticipantEntity>> getParticipants({required EventEntity event});
  Future<void> addParticipantToEvent(
      {required EventEntity event, required ParticipantEntity participant});
}
