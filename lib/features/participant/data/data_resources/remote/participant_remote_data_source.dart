import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';

import '../../../domain/entities/participant/participant_entity.dart';

abstract class ParticipantRemoteDataSource {
  Future<void> createParticipant(
      {required ParticipantEntity participant, Map<String, Object?>? event});
  Future<void> deleteParticipant({required ParticipantEntity participant});
  Future<List<ParticipantEntity>> getParticipants({required EventEntity event});
  Future<void> addEventForParticipants(
      {required QuerySnapshot<Map<String, dynamic>> existingParticipant,
      Map<String, Object?>? event});
  Future<void> addParticipantToEvent(
      {required EventEntity event, required ParticipantEntity participant});
}
