import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:fospresence/features/event/data/data_resources/remote/event_remote_data_source.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';

class EventRemoteDataSourceImpl extends EventRemoteDataSource {
  @override
  Future<Set<Set<void>>> createEvent({required EventEntity event}) async {
    final result = await FirebaseFirestore.instance
        .collection('events')
        .add(event.toFirestore())
        .then(
          (DocumentReference doc) => {
            if (kDebugMode)
              {debugPrint('DocumentSnapshot added with ID: ${doc.id}')}
          },
        );
    await Future.delayed(const Duration(seconds: 3));
    return result;
  }

  @override
  Future<Set<Set<void>>> deleteEvent({required EventEntity event}) {
    // TODO: implement deleteEvent
    throw UnimplementedError();
  }

  @override
  Future<Set<Set<void>>> editEvent({required EventEntity event}) {
    // TODO: implement editEvent
    throw UnimplementedError();
  }

  @override
  Future<List<EventEntity>> getEvents() {
    // TODO: implement getEvents
    throw UnimplementedError();
  }
}
