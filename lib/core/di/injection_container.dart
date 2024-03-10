import 'package:fospresence/core/commons/utils/initial_animation.dart';
import 'package:fospresence/core/commons/utils/value_validator.dart';
import 'package:fospresence/features/event/data/data_resources/remote/event_remote_data_source_impl.dart';
import 'package:fospresence/features/event/data/repositories/event_repository_impl.dart';
import 'package:fospresence/features/event/domain/repositories/event_repository.dart';
import 'package:fospresence/features/event/domain/usecases/create_event_use_case.dart';
import 'package:fospresence/features/event/domain/usecases/delete_event_use_case.dart';
import 'package:fospresence/features/event/domain/usecases/edit_event_use_case.dart';
import 'package:fospresence/features/event/domain/usecases/get_events_use_case.dart';
import 'package:fospresence/features/event/presentation/bloc/event/event_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../features/event/data/data_resources/remote/event_remote_data_source.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // utils
  sl.registerFactory<InitialAnimation>(() =>
      InitialAnimation(animationDuration: 1000, animationIsPlaying: true));
  sl.registerSingleton<ValueValidator>(ValueValidator());

  // Bloc
  sl.registerFactory<EventBloc>(() => EventBloc(
      createEventUseCase: sl(),
      getEventsUseCase: sl(),
      editEventUseCase: sl(),
      deleteEventUseCase: sl()));

  // Data Source
  sl.registerSingleton<EventRemoteDataSource>(EventRemoteDataSourceImpl());

  // Repository
  sl.registerSingleton<EventRespository>(
      EventRepositoryImpl(eventRemoteDataSource: sl()));

  // Use Case
  sl.registerSingleton<GetEventsUseCase>(
      GetEventsUseCase(eventRespository: sl()));
  sl.registerSingleton<CreateEventUseCase>(
      CreateEventUseCase(eventRespository: sl()));
  sl.registerSingleton<EditEventUseCase>(
      EditEventUseCase(eventRespository: sl()));
  sl.registerSingleton<DeleteEventUseCase>(
      DeleteEventUseCase(eventRespository: sl()));
}
