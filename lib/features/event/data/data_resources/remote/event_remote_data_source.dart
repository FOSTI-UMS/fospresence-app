import '../../../domain/entities/event/event_entity.dart';

abstract class EventRemoteDataSource {
  Future<Set<Set<void>>> createEvent({required EventEntity event});
  Future<Set<Set<void>>> deleteEvent({required EventEntity event});
  Future<Set<Set<void>>> editEvent({required EventEntity event});
  Future<List<EventEntity>> getEvents();
}
