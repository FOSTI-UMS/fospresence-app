import 'package:dartz/dartz.dart';
import '../../errors/failure.dart';

class ValueValidator {
  Either<dynamic, ValueFailure<String>> validateEventName(String input) {
    const eventRegex = r'^[a-z0-9]+$';
    const String errorMessage =
        "Nama proker hanya terdiri dari huruf kecil dan tanpa spasi (contoh: fostifest, fostifest24)";

    return RegExp(eventRegex).hasMatch(input)
        ? const Left(null)
        : const Right(
            ValueFailure.invalidEventName(errorMessage: errorMessage));
  }
}
