import 'package:flutter/material.dart';
import 'package:fospresence/config/routes/route_name.dart';
import 'package:fospresence/core/di/injection_container.dart';
import 'package:fospresence/features/event/presentation/bloc/event/event_bloc.dart';
import 'package:fospresence/features/event/presentation/widgets/home/event_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/home/home_background.dart';
import '../widgets/home/sliver_app_bar.dart';

class EventBlocProvider extends StatelessWidget {
  const EventBlocProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => sl<EventBloc>(), child: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) =>
                    [const HomeSliverAppBar()],
            body: const Stack(
                fit: StackFit.expand,
                children: [HomeBackground(), EventCard()]),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: FloatingActionButton(
              onPressed: () =>
                  Navigator.pushNamed(context, RouteName.addEventScreen),
              child: const Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
