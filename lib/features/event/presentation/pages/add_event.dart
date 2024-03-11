import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fospresence/core/commons/widgets/app_bar_custom.dart';
import 'package:fospresence/features/event/presentation/bloc/event/event_bloc.dart';

import '../../../../core/commons/widgets/blur_loading.dart';
import '../widgets/add_event/add_event_form.dart';

class AddEventScreen extends StatelessWidget {
  const AddEventScreen({super.key});

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
              const AddEventForm(),
              const AppBarCustom(title: "Add Event"),
              state.isLoading ? const BlurLoading() : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
