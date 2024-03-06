import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/core/usecase/usecase.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/event/domain/repositories/event_repository.dart';

class DeleteEventUseCase
    extends UseCase<Either<ValueFailure<String>, Set<Set<void>>>, EventEntity> {
  final EventRespository eventRespository;

  DeleteEventUseCase({required this.eventRespository});
  @override
  Future<Either<ValueFailure<String>, Set<Set<void>>>> call(
          {required EventEntity params}) async =>
      await eventRespository.deleteEvent(event: params);
}
