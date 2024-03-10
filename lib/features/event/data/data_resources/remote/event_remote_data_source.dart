import '../../../domain/entities/event/event_entity.dart';

abstract class EventRemoteDataSource {
  Future<void> createEvent({required EventEntity event});
  Future<void> editEvent({required EventEntity event});
  Future<void> deleteEvent({required EventEntity event});
  Future<List<EventEntity>> getEvents();
}
