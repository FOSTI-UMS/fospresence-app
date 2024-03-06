import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/event/event_entity.dart';

abstract class EventRespository {
  Future<Either<ValueFailure<String>, List<EventEntity>>> getEvents();
  Future<Either<ValueFailure<String>, Set<Set<void>>>> createEvent({
    required EventEntity event,
  });
  Future<Either<ValueFailure<String>, Set<Set<void>>>> editEvent({
    required EventEntity event,
  });
  Future<Either<ValueFailure<String>, Set<Set<void>>>> deleteEvent({
    required EventEntity event,
  });
}
