import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/event/data/data_resources/remote/event_remote_data_source.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/event/domain/repositories/event_repository.dart';

class EventRepositoryImpl extends EventRespository {
  final EventRemoteDataSource eventRemoteDataSource;

  EventRepositoryImpl({required this.eventRemoteDataSource});
  @override
  Future<Either<ValueFailure<String>, void>> createEvent(
      {required EventEntity event}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final result = await eventRemoteDataSource.createEvent(event: event);
      return Right(result);
    } catch (e) {
      if (e is Exception) {
        return const Left(
          ValueFailure.eventAlreadyExists(
              errorMessage: "Event with the same name already exists"),
        );
      } else {
        return const Left(
          ValueFailure.firebaseError(errorMessage: "Failed to create event"),
        );
      }
    }
  }

  @override
  Future<Either<ValueFailure<String>, void>> deleteEvent(
      {required EventEntity event}) async {
    try {
      final result = await eventRemoteDataSource.deleteEvent(event: event);
      return Right(result);
    } catch (e) {
      return const Left(
        ValueFailure.firebaseError(errorMessage: "Failed to delete event"),
      );
    }
  }

  @override
  Future<Either<ValueFailure<String>, void>> editEvent(
      {required EventEntity event}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final result = await eventRemoteDataSource.editEvent(event: event);
      return Right(result);
    } catch (e) {
      return const Left(
        ValueFailure.firebaseError(errorMessage: "Failed to edit event"),
      );
    }
  }

  @override
  Future<Either<ValueFailure<String>, List<EventEntity>>> getEvents() async {
    try {
      final result = await eventRemoteDataSource.getEvents();
      return Right(result);
    } catch (e) {
      return const Left(
        ValueFailure.firebaseError(errorMessage: "Failed to get event"),
      );
    }
  }
}
