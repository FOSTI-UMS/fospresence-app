import 'package:flutter/material.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerSkelton extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final bool isCircle;

  const ShimmerSkelton({
    super.key,
    required this.height,
    required this.width,
    this.borderRadius = 15,
    this.isCircle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: globalShimmerColor(context),
      highlightColor: globalShimmerColor(context).withOpacity(0.7),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
          color: const Color(0xFF01303f),
          borderRadius: isCircle ? null : BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
