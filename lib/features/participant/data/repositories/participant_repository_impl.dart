import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/participant/domain/entities/participant/participant_entity.dart';

import '../../domain/repositories/participant_repository.dart';
import '../data_resources/remote/participant_remote_data_source.dart';

class ParticipantRepositoryImpl extends ParticipantRespository {
  final ParticipantRemoteDataSource participantRemoteDataSource;

  ParticipantRepositoryImpl({required this.participantRemoteDataSource});

  @override
  Future<Either<ValueFailure<String>, void>> createParticipant(
      {required ParticipantEntity participant}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final result = await participantRemoteDataSource.createParticipant(
          participant: participant);
      return Right(result);
    } catch (e) {
      if (e is Exception) {
        return const Left(
          ValueFailure.participantAlreadyExists(
              errorMessage: "Nama peserta sudah terdaftar"),
        );
      } else {
        return const Left(
          ValueFailure.firebaseError(errorMessage: "Gagal menambahkan peserta"),
        );
      }
    }
  }

  @override
  Future<Either<ValueFailure<String>, void>> deleteParticipant(
      {required ParticipantEntity participant}) async {
    try {
      final result = await participantRemoteDataSource.deleteParticipant(
          participant: participant);
      return Right(result);
    } catch (e) {
      return const Left(
        ValueFailure.firebaseError(errorMessage: "Gagal menghapus peserta"),
      );
    }
  }

  @override
  Future<Either<ValueFailure<String>, List<ParticipantEntity>>>
      getParticipants() async {
    try {
      final result = await participantRemoteDataSource.getParticipants();
      return Right(result);
    } catch (e) {
      return const Left(
        ValueFailure.firebaseError(errorMessage: "Koneksi buruk"),
      );
    }
  }
}
