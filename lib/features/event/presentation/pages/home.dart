import 'package:flutter/material.dart';
import 'package:fospresence/config/routes/route_name.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/core/constants/font.dart';
import 'package:fospresence/features/event/presentation/widgets/home/event_card.dart';

import '../../../../core/commons/widgets/background_w_logo.dart';
import '../widgets/home/sliver_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) =>
                    [const HomeSliverAppBar()],
            body: Stack(
              fit: StackFit.expand,
              children: [
                const BackgroundWithLogo(),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 10),
                    child: Text(
                      "Program Kerja FOSTI",
                      style: textWhite24.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  const EventCard(),
                ])
              ],
            ),
          ),
          _buildFloatingActionButton(context)
        ],
      ),
    );
  }

  Positioned _buildFloatingActionButton(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: FloatingActionButton(
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
      ),
    );
  }
}
