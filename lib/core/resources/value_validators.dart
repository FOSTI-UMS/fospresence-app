import 'package:dartz/dartz.dart';
import '../errors/failures.dart';

Either<ValueFailure<String>, String> validateEvent(String input) {
  const eventRegex = r'^[a-z_]+$';
  if (!RegExp(eventRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidEvent(failedValue: input));
  }
}
