import 'package:flutter/material.dart';
import 'package:fospresence/config/routes/route_name.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/features/event/presentation/widgets/home/event_card.dart';
import 'package:fospresence/features/event/presentation/widgets/home/event_year.dart';

import '../../../../core/commons/widgets/background_w_logo.dart';
import '../widgets/home/sliver_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: _buildFloatingActionButton(context),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [const HomeSliverAppBar()],
        body: const Stack(
          fit: StackFit.expand,
          children: [
            BackgroundWithLogo(),
            Column(children: [EventYear(), EventCard()])
          ],
        ),
      ),
    );
  }

  FloatingActionButton _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.pushNamed(context, RouteName.addEventScreen),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 0.3),
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15), topLeft: Radius.circular(15)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: primaryGradientColor),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
