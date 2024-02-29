import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_event_bloc_event.dart';
part 'add_event_bloc_state.dart';

class AddEventBlocBloc extends Bloc<AddEventBlocEvent, AddEventBlocState> {
  AddEventBlocBloc() : super(AddEventBlocInitial()) {
    on<AddEventBlocEvent>((event, emit) {
      
    });
  }
}
