import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/font.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    const double sizeFostiLogo = 40;
    return SliverAppBar(
      backgroundColor: primaryColor,
      expandedHeight: 210,
      automaticallyImplyLeading: false,
      pinned: true,
      centerTitle: true,
      toolbarHeight: 85,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.only(bottom: 20),
        title: RichText(
          text: TextSpan(
            style: textWhite26.copyWith(fontWeight: FontWeight.w600),
            children: [
              WidgetSpan(
                child: Container(
                  height: sizeFostiLogo,
                  width: sizeFostiLogo,
                  margin: const EdgeInsets.only(left: 0, right: 6),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.white)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(sizeFostiLogo),
                    child: Image.asset("assets/images/fosti_rectangle_logo.png",
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const TextSpan(text: "Presence"),
            ],
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/company_profile.jpeg",
                fit: BoxFit.cover),
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
                    Color.fromARGB(60, 0, 0, 0),
                    Color.fromARGB(150, 0, 0, 0)
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
