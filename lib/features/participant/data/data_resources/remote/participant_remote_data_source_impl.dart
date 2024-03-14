import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';

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
      await addEventForParticipants(
          existingParticipant: existingParticipant, event: event);
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
  Future<void> addEventForParticipants(
      {required QuerySnapshot<Map<String, dynamic>> existingParticipant,
      Map<String, Object?>? event}) async {
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
  }

  @override
  Future<List<ParticipantEntity>> getParticipants(
      {required EventEntity event}) async {
    List<ParticipantEntity> participants = [];
    QuerySnapshot querySnapshots = await FirebaseFirestore.instance
        .collection("events")
        .doc(event.ref.id)
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

   @override
  Future<void> addParticipantToEvent(
      {required EventEntity event,
      required ParticipantEntity participant}) async {
    final existingEvent = await FirebaseFirestore.instance
        .collection('events')
        .doc(event.ref.id)
        .collection('participants')
        .where('email', isEqualTo: participant.email)
        .limit(1)
        .get();

    if (existingEvent.docs.isNotEmpty) {
      throw Exception();
    }
    final result = await FirebaseFirestore.instance
        .collection('events')
        .doc(event.ref.id)
        .collection('participants')
        .add(participant.toFirestore())
        .then((DocumentReference doc) =>
            debugPrint('DocumentSnapshot added with ID: ${doc.id}'));
    return result;
  }
}
