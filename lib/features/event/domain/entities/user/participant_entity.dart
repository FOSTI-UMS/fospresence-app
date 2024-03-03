import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_entity.freezed.dart';

@freezed
abstract class ParticipantEntity with _$ParticipantEntity {
  const ParticipantEntity._();

  const factory ParticipantEntity({
    required DocumentReference ref,
    required String id,
    required String name,
    required String nim,
    List<EventEntity>? events,
  }) = _ParticipantEntity;

  factory ParticipantEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    final data = snapshot.data();

    return ParticipantEntity(
      ref: snapshot.reference,
      id: data?["id"],
      name: data?["name"],
      nim: data?["nim"],
      events: data?["events"] ?? [],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "id": id,
      "name": name,
      "nim": nim,
      "events": events,
    };
  }
}
