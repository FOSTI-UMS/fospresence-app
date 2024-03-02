import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/font.dart';

class DetailEventSliverAppBar extends StatelessWidget {
  const DetailEventSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    const double sizeFostiLogo = 30;
    const double sizeParticipantsCircle = 60;
    return SliverAppBar(
      backgroundColor: primaryColor,
      expandedHeight: 250,
      floating: true,
      automaticallyImplyLeading: false,
      centerTitle: true,
      toolbarHeight: 1,
      forceMaterialTransparency: true,
      forceElevated: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        title: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Participants",
                        style:
                            textWhite18.copyWith(fontWeight: FontWeight.w400)),
                    Container(
                      height: sizeParticipantsCircle,
                      width: sizeParticipantsCircle,
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(right: 5),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.5, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.2),
                              blurRadius: 12.0,
                              spreadRadius: 8.0),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "20",
                          style:
                              textWhite23.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      height: sizeFostiLogo,
                      width: sizeFostiLogo,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.white)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(sizeFostiLogo),
                        child: Image.asset(
                            "assets/images/fosti_rectangle_logo.png",
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text("FOSTIFEST",
                          style: textWhite20.copyWith(
                              fontWeight: FontWeight.w700,
                              overflow: TextOverflow.ellipsis),
                          overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Saturday, 20 Jan 2024",
                  style: textWhite11.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/bg_detail_event.jpg",
                fit: BoxFit.cover, filterQuality: FilterQuality.medium),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Color.fromARGB(40, 255, 255, 255),
                    Color.fromARGB(80, 255, 255, 255)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
