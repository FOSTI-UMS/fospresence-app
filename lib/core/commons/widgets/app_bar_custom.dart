import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/font.dart';

class AppBarCustom extends StatelessWidget {
  final String title;
  const AppBarCustom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 90,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: primaryGradientColor,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.transparent,
                width: 30,
                child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child:
                        const Icon(Icons.arrow_back_ios, color: Colors.white)),
              ),
              Text(title,
                  style: textWhite22.copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(width: 30)
            ],
          ),
        ),
      ),
    );
  }
}
