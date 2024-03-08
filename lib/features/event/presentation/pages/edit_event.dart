import 'package:flutter/material.dart';
import 'package:fospresence/features/event/presentation/widgets/edit_event/edit_widget_form.dart';

import '../../../../core/commons/widgets/app_bar_custom.dart';

class EditEventScreen extends StatelessWidget {
  const EditEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          EditEventForm(),
          AppBarCustom(title: "Edit Event"),
        ],
      ),
    );
  }
}
