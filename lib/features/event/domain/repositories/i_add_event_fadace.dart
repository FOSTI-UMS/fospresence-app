import 'package:dartz/dartz.dart';
import 'failure.dart';

abstract class AddEventRespository {
  Future<Either<AddEventFailure, Unit>> createEvent({
    required String name,
    required DateTime date,
  });
}
