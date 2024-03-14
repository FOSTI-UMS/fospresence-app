import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:fospresence/features/event/data/data_resources/remote/event_remote_data_source.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';

class EventRemoteDataSourceImpl extends EventRemoteDataSource {
  @override
  Future<void> createEvent({required EventEntity event}) async {
    final existingEvent = await FirebaseFirestore.instance
        .collection('events')
        .where('name', isEqualTo: event.name)
        .limit(1)
        .get();

    if (existingEvent.docs.isNotEmpty) {
      throw Exception();
    }

    final result = await FirebaseFirestore.instance
        .collection('events')
        .add(event.toFirestore())
        .then((DocumentReference doc) =>
            debugPrint('DocumentSnapshot added with ID: ${doc.id}'));
    return result;
  }

  @override
  Future<void> deleteEvent({required EventEntity event}) async {
    CollectionReference events =
        FirebaseFirestore.instance.collection('events');

    QuerySnapshot participantSnapshot = await FirebaseFirestore.instance
        .collection('participants')
        .where('events', isEqualTo: event)
        .get();

    if (participantSnapshot.docs.isNotEmpty) {
      for (QueryDocumentSnapshot doc in participantSnapshot.docs) {
        await doc.reference.delete();
      }
    } else {
      debugPrint("No participants found for this event.");
    }

    return events
        .doc(event.ref.id)
        .delete()
        .then((value) => debugPrint("Event Deleted"));
  }

  @override
  Future<void> editEvent({required EventEntity event}) async {
    CollectionReference events =
        FirebaseFirestore.instance.collection('events');

    QuerySnapshot participantSnapshot = await FirebaseFirestore.instance
        .collection('participants')
        .where('events', isEqualTo: event)
        .get();

    if (participantSnapshot.docs.isNotEmpty) {
      for (QueryDocumentSnapshot doc in participantSnapshot.docs) {
        await doc.reference.update({
          'name': event.name,
          'datetime': event.datetime,
          'perticipants': event.participants
        });
      }
    } else {
      debugPrint("No participants found for this event.");
    }

    return events.doc(event.ref.id).update(
      {
        'name': event.name,
        'datetime': event.datetime,
        'perticipants': event.participants
      },
    ).then((value) => debugPrint("Event updated"));
  }

  @override
  Future<List<EventEntity>> getEvents() async {
    List<EventEntity> events = [];
    QuerySnapshot querySnapshots = await FirebaseFirestore.instance
        .collection("events")
        .orderBy("datetime", descending: true)
        .withConverter(
            fromFirestore: EventEntity.fromFirestore,
            toFirestore: (EventEntity event, _) => event.toFirestore())
        .get();

    for (var i in querySnapshots.docs) {
      var data = i.data() as EventEntity;
      events.add(data);
    }
    return events;
  }

 
}
