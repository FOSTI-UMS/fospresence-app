import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/participant/domain/entities/participant/participant_entity.dart';

import '../../../event/domain/entities/event/event_entity.dart';
import '../../domain/repositories/participant_repository.dart';
import '../data_resources/remote/participant_remote_data_source.dart';

class ParticipantRepositoryImpl extends ParticipantRespository {
  final ParticipantRemoteDataSource participantRemoteDataSource;

  ParticipantRepositoryImpl({required this.participantRemoteDataSource});

  @override
  Future<Either<ValueFailure<String>, void>> deleteParticipant(
      {required ParticipantEntity participant,required EventEntity event}) async {
    try {
      final result = await participantRemoteDataSource.deleteParticipant(
          participant: participant,
          event: event);
      return Right(result);
    } catch (e) {
      debugPrint("PARTICIPANT ERROR: $e");
      return const Left(
        ValueFailure.firebaseError(errorMessage: "Gagal menghapus peserta"),
      );
    }
  }

  @override
  Future<Either<ValueFailure<String>, List<ParticipantEntity>>> getParticipants(
      {required EventEntity event}) async {
    try {
      final result =
          await participantRemoteDataSource.getParticipants(event: event);
      return Right(result);
    } catch (e) {
      debugPrint("PARTICIPANT ERROR: $e");
      return const Left(
        ValueFailure.firebaseError(errorMessage: "Koneksi buruk"),
      );
    }
  }

  @override
  Future<Either<ValueFailure<String>, void>> addParticipantToEvent(
      {required EventEntity event,
      required ParticipantEntity participant}) async {
    try {
      final result = await participantRemoteDataSource.addParticipantToEvent(
          event: event, participant: participant);
      return Right(result);
    } catch (e) {
      if (e is Exception) {
        debugPrint("ERROR: $e");
        return const Left(
          ValueFailure.participantAlreadyExists(
              errorMessage: "Peserta sudah terdaftar"),
        );
      } else {
        debugPrint("ERROR: $e");
        return const Left(
          ValueFailure.firebaseError(errorMessage: "Gagal menambahkan peserta"),
        );
      }
    }
  }
}
