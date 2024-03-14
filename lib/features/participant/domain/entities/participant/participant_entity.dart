import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_entity.freezed.dart';

@freezed
abstract class ParticipantEntity with _$ParticipantEntity {
  factory ParticipantEntity({
    required DocumentReference ref,
    required String name,
    required String email,
    required String eventRaw,
    EventEntity? event,
  }) = _ParticipantEntity;

  factory ParticipantEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    final data = snapshot.data();

    return ParticipantEntity(
      ref: snapshot.reference,
      name: data?["name"],
      email: data?["email"],
      eventRaw: data?["events"] ?? [],
    );
  }

  Map<String, Object?> toFirestore() {
    return {
      "name": name,
      "email": email,
      "events": event?.ref.id,
    };
  }
}
