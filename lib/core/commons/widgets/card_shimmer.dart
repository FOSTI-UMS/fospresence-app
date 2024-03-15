import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants/colors.dart';
import '../../constants/helper.dart';

class CardShimmer extends StatelessWidget {
  final int index;
  const CardShimmer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      from: 500,
      duration: Duration(milliseconds: 600 * index),
      child: Padding(
        padding: EdgeInsets.only(bottom: index == 5 - 1 ? 10 : 0),
        child: Container(
          height: 100,
          width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.all(0.5),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            border: globalWhiteBorder,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white.withOpacity(0.9),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [primaryColor.withOpacity(0.9), Colors.black],
            ),
          ),
          child: Shimmer.fromColors(
            baseColor: secondaryColor.withOpacity(0.1),
            highlightColor: primaryColor.withOpacity(0.9),
            child: Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
