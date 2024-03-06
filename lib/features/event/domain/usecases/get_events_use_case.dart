import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/core/usecase/usecase.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/event/domain/repositories/event_repository.dart';

class GetEventsUseCase
    extends UseCase<Either<ValueFailure<String>, List<EventEntity>>, Unit> {
  final EventRespository _eventRespository;

  GetEventsUseCase(this._eventRespository);
  @override
  Future<Either<ValueFailure<String>, List<EventEntity>>> call(
          {required Unit params}) async =>
      await _eventRespository.getEvents();
}
