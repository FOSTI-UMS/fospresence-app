import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';

import '../../../domain/entities/participant/participant_entity.dart';
import 'participant_remote_data_source.dart';

class ParticipantRemoteDataSourceImpl extends ParticipantRemoteDataSource {
  @override
  Future<void> deleteParticipant(
      {required ParticipantEntity participant,
      required EventEntity event}) async {
    CollectionReference participants = FirebaseFirestore.instance
        .collection("events")
        .doc(event.ref.id)
        .collection("participants");

    return participants
        .doc(participant.ref.id)
        .delete()
        .then((value) => debugPrint("Participant Deleted"));
  }

  @override
  Future<List<ParticipantEntity>> getParticipants(
      {required EventEntity event}) async {
    List<ParticipantEntity> participants = [];
    QuerySnapshot querySnapshots = await FirebaseFirestore.instance
        .collection("events")
        .doc(event.ref.id)
        .collection("participants")
        .orderBy("name")
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
