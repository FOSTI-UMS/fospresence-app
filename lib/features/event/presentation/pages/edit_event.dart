import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fospresence/features/event/presentation/widgets/edit_event/edit_widget_form.dart';

import '../../../../core/commons/widgets/app_bar_custom.dart';
import '../../../../core/commons/widgets/blur_loading.dart';
import '../bloc/event/event_bloc.dart';

class EditEventScreen extends StatelessWidget {
  const EditEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventBloc, EventState>(
      bloc: BlocProvider.of<EventBloc>(context),
      builder: (context, state) => PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (!state.isLoading && !didPop) Navigator.of(context).pop();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              const EditEventForm(),
              const AppBarCustom(title: "Edit Proker"),
              state.isLoading ? const BlurLoading() : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
