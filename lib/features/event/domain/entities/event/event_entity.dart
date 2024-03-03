import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fospresence/features/event/domain/entities/user/participant_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_entity.freezed.dart';

@freezed
abstract class EventEntity with _$EventEntity {
  const EventEntity._();

  const factory EventEntity({
    required DocumentReference ref,
    required String id,
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
      id: data?["id"],
      name: data?["name"],
      datetime: data?["datetime"],
      participants: data?["participants"] ?? [],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "id": id,
      "name": name,
      "datetime": datetime,
      "participants": participants,
    };
  }
}
