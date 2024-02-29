part of 'add_event_bloc_bloc.dart';

sealed class AddEventBlocState extends Equatable {
  const AddEventBlocState();

  @override
  List<Object> get props => [];
}

final class AddEventBlocInitial extends AddEventBlocState {}

final class DateChangedState extends AddEventBlocState {
  
}

