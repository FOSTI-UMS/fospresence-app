import 'package:flutter/material.dart';
import 'package:fospresence/features/addEvent/presentation/pages/add_event.dart';
import 'package:fospresence/features/home/presentation/widgets/event_card.dart';

import '../widgets/home_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FOSTI PRESENCE"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddEventScreen()),
        ),
        child: const Icon(Icons.add),
      ),
      body: const Stack(
        children: [HomeBackground(), EventCard()],
      ),
    );
  }
}
