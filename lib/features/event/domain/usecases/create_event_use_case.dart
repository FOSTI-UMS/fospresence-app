import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/event/domain/repositories/event_repository.dart';

class CreateEventUseCase {
  final EventRespository eventRespository;

  const CreateEventUseCase({required this.eventRespository});

  Future<Either<ValueFailure<String>, Unit>> call(
      {required EventEntity event}) async {
    return await eventRespository.createEvent(event: event);
  }
}
