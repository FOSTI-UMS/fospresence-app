import 'package:flutter/material.dart';

import '../../constants/font.dart';

class CustomToast extends StatelessWidget {
  final String message;
  const CustomToast({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black.withOpacity(0.5),
        ),
        child: Text(
          message,
          overflow: TextOverflow.fade,
          style: textWhite14.copyWith(fontWeight: FontWeight.w600),
        ),
      );
  }
}