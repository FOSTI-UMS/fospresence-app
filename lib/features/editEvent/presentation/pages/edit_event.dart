import 'package:flutter/material.dart';
import 'package:fospresence/features/editEvent/presentation/widgets/edit_widget_form.dart';

class EditEventScreen extends StatelessWidget {
  const EditEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Edit Event"),
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios, color: Colors.white)),
      ),
      body: const EditEventForm(),
    );
  }
}
