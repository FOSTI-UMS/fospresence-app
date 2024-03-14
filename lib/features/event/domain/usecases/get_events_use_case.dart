import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/event/domain/repositories/event_repository.dart';

import '../../../../core/usecase/usecase.dart';

class GetEventsUseCase extends UseCase<Either<ValueFailure<String>,  List<EventEntity>>, Null>{
  final EventRespository eventRespository;

  GetEventsUseCase({required this.eventRespository});
  @override
  Future<Either<ValueFailure<String>, List<EventEntity>>> call({Null params}) async =>
      await eventRespository.getEvents();
}
