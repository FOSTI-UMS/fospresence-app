import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fospresence/core/commons/widgets/shimmer_skelton.dart';

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
          padding: const EdgeInsets.all(22),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: ShimmerSkelton(height: 20, width: 200),
                  ),
                  ShimmerSkelton(height: 10, width: 150)
                ],
              ),
              SvgPicture.asset("assets/svg/more_vert.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
