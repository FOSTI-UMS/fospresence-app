import 'package:dartz/dartz.dart';
import '../errors/failure.dart';

Either<ValueFailure<String>, String> validateEventName(String input) {
  const eventRegex = r'^[a-z_]+$';
  if (!RegExp(eventRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidEventName(failedValue: input));
  }
}
