import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fospresence/core/errors/failure.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_event_event.dart';
part 'add_event_state.dart';

part 'add_event_bloc.freezed.dart';

class AddEventBlocBloc extends Bloc<AddEventEvent, AddEventState> {
  AddEventBlocBloc() : super(AddEventState.started()) {
    on<AddEventEvent>((event, emit) {});
  }
}
