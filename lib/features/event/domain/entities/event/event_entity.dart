import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fospresence/features/participant/domain/entities/participant/participant_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_entity.freezed.dart';

@freezed
abstract class EventEntity with _$EventEntity {
  const factory EventEntity({
    required DocumentReference ref,
    required String name,
    required DateTime datetime,
    List<ParticipantEntity>? participants,
  }) = _EventEntity;

  factory EventEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    final data = snapshot.data();

    return EventEntity(
      ref: snapshot.reference,
      name: data?["name"],
      datetime: data?["datetime"],
      participants: data?["participants"] ?? [],
    );
  }
  Map<String, Object?> toFirestore() {
    return {
      "name": name,
      "datetime": datetime,
      "participants": participants,
    };
  }
}
