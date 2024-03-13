import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/participant/participant_entity.dart';
import 'participant_remote_data_source.dart';

class ParticipantRemoteDataSourceImpl extends ParticipantRemoteDataSource {
  @override
  Future<void> createParticipant(
      {required ParticipantEntity participant,
      Map<String, Object?>? event}) async {
    final existingParticipant = await FirebaseFirestore.instance
        .collection('participants')
        .where('name', isEqualTo: participant.name)
        .limit(1)
        .get();

    if (existingParticipant.docs.isNotEmpty) {
      final participantRef = existingParticipant.docs.first.reference;
      final List<dynamic> existingEvents =
          existingParticipant.docs.first['events'];
      if (existingEvents
          .any((existingEvent) => existingEvent["name"] == event!["name"])) {
        throw Exception();
      }
      final List<dynamic> updatedEvents = List.from(existingEvents)..add(event);

      return await participantRef.update({'events': updatedEvents}).then(
          (value) => debugPrint('Events added to existing participant'));
    } else {
      return await FirebaseFirestore.instance
          .collection('participants')
          .add(participant.toFirestore())
          .then((DocumentReference doc) =>
              debugPrint('DocumentSnapshot added with ID: ${doc.id}'));
    }
  }

  @override
  Future<void> deleteParticipant(
      {required ParticipantEntity participant}) async {
    CollectionReference participants =
        FirebaseFirestore.instance.collection('participants');

    QuerySnapshot participantSnapshot = await FirebaseFirestore.instance
        .collection('participants')
        .where('participants', isEqualTo: participant)
        .get();

    for (QueryDocumentSnapshot doc in participantSnapshot.docs) {
      await doc.reference.delete();
    }

    return participants
        .doc(participant.ref.id)
        .delete()
        .then((value) => debugPrint("Participant Deleted"));
  }

  @override
  Future<List<ParticipantEntity>> getParticipants() async {
    List<ParticipantEntity> participants = [];
    QuerySnapshot querySnapshots = await FirebaseFirestore.instance
        .collection("participants")
        .orderBy("datetime", descending: true)
        .withConverter(
            fromFirestore: ParticipantEntity.fromFirestore,
            toFirestore: (ParticipantEntity participant, _) =>
                participant.toFirestore())
        .get();

    for (var i in querySnapshots.docs) {
      var data = i.data() as ParticipantEntity;
      participants.add(data);
    }
    return participants;
  }
}
