import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fospresence/core/commons/widgets/fospresence_w_logo.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/font.dart';

class HomeSliverAppBar extends StatefulWidget {
  const HomeSliverAppBar({super.key});

  @override
  State<HomeSliverAppBar> createState() => _HomeSliverAppBarState();
}

class _HomeSliverAppBarState extends State<HomeSliverAppBar> {
  final List<String> listImageEvent = [
    "assets/images/event1.jpeg",
    "assets/images/event2.jpeg",
    "assets/images/event3.jpeg",
    "assets/images/event4.jpeg",
    "assets/images/event5.jpeg",
    "assets/images/event6.jpeg",
    "assets/images/event7.jpeg",
    "assets/images/event8.jpeg",
    "assets/images/event9.jpeg",
    "assets/images/event10.jpeg",
    "assets/images/event11.jpeg",
  ];

  @override
  void initState() {
    super.initState();
    listImageEvent.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 170,
      automaticallyImplyLeading: false,
      pinned: true,
      centerTitle: true,
      toolbarHeight: 80,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: primaryGradientColor,
          ),
        ),
        child: _buildFlexibleSpaceBar(context),
      ),
    );
  }

  FlexibleSpaceBar _buildFlexibleSpaceBar(BuildContext context) {
    return FlexibleSpaceBar(
      centerTitle: true,
      titlePadding: const EdgeInsets.only(bottom: 20),
      title: FadeInUp(
          duration: const Duration(seconds: 3),
          child: FosPresenceWithLogo(sizeFostiLogo: 40, textSize: textWhite26)),
      background: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlayInterval: const Duration(seconds: 10),
              viewportFraction: 1,
              autoPlay: true,
              height: 250,
              autoPlayAnimationDuration: const Duration(seconds: 2),
              scrollPhysics: const BouncingScrollPhysics(),
            ),
            items: listImageEvent
                .map<Widget>(
                  (image) => SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Image.asset(image, fit: BoxFit.cover),
                  ),
                )
                .toList(),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.3),
                  secondaryColor.withOpacity(0.8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
