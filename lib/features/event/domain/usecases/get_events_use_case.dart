import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/event/domain/repositories/event_repository.dart';

class GetEventsUseCase {
  final EventRespository eventRespository;

  GetEventsUseCase({required this.eventRespository});
  Future<Either<ValueFailure<String>, List<EventEntity>>> call() async =>
      await eventRespository.getEvents();
}
