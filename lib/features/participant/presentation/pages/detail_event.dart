import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fospresence/features/event/presentation/bloc/event/event_bloc.dart';
import 'package:fospresence/features/participant/presentation/widgets/detail_event/search.dart';
import 'package:fospresence/features/participant/presentation/widgets/detail_event/participant_list_view.dart';
import 'package:fospresence/core/commons/widgets/background_w_logo.dart';
import '../../../../core/constants/colors.dart';
import '../widgets/detail_event/sliver_app_bar.dart';

class DetailEventScreen extends StatelessWidget {
  const DetailEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          BlocBuilder<EventBloc, EventState>(
              builder: (context, state) =>
                  DetailEventSliverAppBar(selectedEvent: state.selectedEvent!)),
        ],
        body: Container(
          decoration: BoxDecoration(color: appDarkBgColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                const DetailEventSearch(),
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      const BackgroundWithLogo(),
                      BlocBuilder<EventBloc, EventState>(
                        builder: (context, state) => ParticipantListView(
                            selectedEvent: state.selectedEvent!),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
