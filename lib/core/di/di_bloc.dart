import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fospresence/features/event/presentation/bloc/event/event_bloc.dart';
import 'package:fospresence/features/my_app.dart';

import 'injection_container.dart';

class GlobalBlocProviders extends StatelessWidget {
  const GlobalBlocProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EventBloc>(create: (context) => sl.get<EventBloc>()),
      ],
      child: const MyApp(),
    );
  }
}
