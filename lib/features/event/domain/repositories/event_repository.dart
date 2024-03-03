import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/event/event_entity.dart';

abstract class EventRespository {
  Future<Either<ValueFailure<String>, List<EventEntity>>> getEvents();
  Future<Either<ValueFailure<String>, Unit>> createEvent({
    required EventEntity event,
  });
  Future<Either<ValueFailure<String>, Unit>> editEvent({
    required EventEntity event,
  });
  Future<Either<ValueFailure<String>, Unit>> deleteEvent({
    required EventEntity event,
  });
}
