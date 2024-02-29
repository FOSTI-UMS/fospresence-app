import 'package:flutter/material.dart';

import '../widgets/add_event_form.dart';

class AddEventScreen extends StatelessWidget {
  const AddEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add Event"),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: const AddEventForm(),
    );
  }
}
