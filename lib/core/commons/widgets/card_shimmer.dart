import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants/colors.dart';

class CardShimmer extends StatelessWidget {
  final int index;
  const CardShimmer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: FadeInLeft(
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
              border: globalBorder(context),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
              color: Colors.white.withOpacity(0.9),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: gradientColorLeftToRight(context),
              ),
            ),
            child: Shimmer.fromColors(
              baseColor: secondaryColor.withOpacity(0.1),
              highlightColor: globalShimmerColor(context),
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
      ),
    );
  }
}
