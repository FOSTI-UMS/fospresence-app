import 'package:dartz/dartz.dart';
import '../../errors/failure.dart';

class ValueValidator {
  Either<dynamic, ValueFailure<String>> validateEventName(String input) {
    const eventRegex = r'^[a-z0-9]+$';
    const String errorMessage =
        "Event name should consist of only lowercase letters and no spaces (e.g: fostifest24, fosti_fest24)";

    return RegExp(eventRegex).hasMatch(input)
        ? const Left(null)
        : const Right(
            ValueFailure.invalidEventName(errorMessage: errorMessage));
  }
}
