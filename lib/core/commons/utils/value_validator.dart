import 'package:dartz/dartz.dart';
import '../../errors/failure.dart';

class ValueValidator {
  Either<dynamic, ValueFailure<String>> validateEventName(String input) {
    const eventRegex = r'^[a-z_]+$';
    const String errorMessage =
        "Event name should consist of only lowercase letters and no spaces (e.g: fostifest, fosti_fest)";

    return RegExp(eventRegex).hasMatch(input)
        ? const Left(null)
        : const Right(
            ValueFailure.invalidEventName(errorMessage: errorMessage));
  }
}
