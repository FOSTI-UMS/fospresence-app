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
    required String division,
    required String role,
    required DateTime datetime,
    String? eventRaw,
    EventEntity? event,
  }) = _ParticipantEntity;

  factory ParticipantEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    final data = snapshot.data();

    return ParticipantEntity(
      ref: snapshot.reference,
      name: data?["name"].toLowerCase().split(' ').map(
        (word) {
          return word.isNotEmpty
              ? word[0].toUpperCase() + word.substring(1)
              : "";
        },
      ).join(' '),
      email: data?["email"],
      division: data?["division"].toUpperCase(),
      role: data?["role"].toUpperCase(),
      datetime: (data?["datetime"] as Timestamp).toDate(),
      // eventRaw: data?["events"],
    );
  }

  Map<String, Object?> toFirestore() {
    return {
      "name": name,
      "email": email,
      "division": division,
      "role": role,
      "datetime": datetime,
      // "events": event?.ref.id,
    };
  }
}

// BUAT FUNCTION BARU KAYAK INITEVENTS BUAT ISI, ISI EVENTSNYA
