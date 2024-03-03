import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_event_event.dart';
part 'add_event_state.dart';

part 'add_event_bloc.freezed.dart';

class AddEventBlocBloc extends Bloc<AddEventEvent, AddEventState> {
  AddEventBlocBloc() : super(const AddEventState.started()) {
    on<AddEventEvent>((event, emit) {});
  }
}
