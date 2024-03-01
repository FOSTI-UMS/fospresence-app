import 'dart:ui';
import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.7,
        height: MediaQuery.sizeOf(context).width * 0.7,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: const AssetImage('assets/images/fosti_rectangle_logo.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.dstATop),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(color: Colors.transparent),
        ),
      ),
    );
  }
}
