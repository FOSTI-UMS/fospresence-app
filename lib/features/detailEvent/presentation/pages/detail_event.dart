import 'package:flutter/material.dart';

import '../../../../core/commons/widgets/event_card.dart';
import '../../../../core/constants/colors.dart';
import '../widgets/sliver_app_bar.dart';

class DetailEventScreen extends StatelessWidget {
  const DetailEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 95, 95),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [const DetailEventSliverAppBar()],
        body: Container(
          decoration: BoxDecoration(
            color: appLightBgColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: const Stack(fit: StackFit.expand, children: [EventCard()]),
        ),
      ),
    );
  }
}
