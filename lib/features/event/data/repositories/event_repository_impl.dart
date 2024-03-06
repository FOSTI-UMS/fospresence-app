import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/event/domain/repositories/event_repository.dart';

class EventRepositoryImpl extends EventRespository {
  @override
  Future<Either<ValueFailure<String>, Unit>> createEvent({required EventEntity event}) {
    // TODO: implement createEvent
    throw UnimplementedError();
  }

  @override
  Future<Either<ValueFailure<String>, Unit>> deleteEvent({required EventEntity event}) {
    // TODO: implement deleteEvent
    throw UnimplementedError();
  }

  @override
  Future<Either<ValueFailure<String>, Unit>> editEvent({required EventEntity event}) {
    // TODO: implement editEvent
    throw UnimplementedError();
  }

  @override
  Future<Either<ValueFailure<String>, List<EventEntity>>> getEvents() {
    // TODO: implement getEvents
    throw UnimplementedError();
  }
  
}
