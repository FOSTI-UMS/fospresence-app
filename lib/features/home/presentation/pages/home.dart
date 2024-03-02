import 'package:flutter/material.dart';
import 'package:fospresence/features/addEvent/presentation/pages/add_event.dart';
import 'package:fospresence/features/home/presentation/widgets/event_card.dart';

import '../widgets/home_background.dart';
import '../widgets/sliver_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddEventScreen()),
        ),
        child: const Icon(Icons.add),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [const HomeSliverAppBar()],
        body: const Stack(
            fit: StackFit.expand, children: [HomeBackground(), EventCard()]),
      ),
    );
  }
}
