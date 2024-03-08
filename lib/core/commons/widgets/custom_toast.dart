import 'package:flutter/material.dart';
import 'package:fospresence/core/constants/font.dart';
import 'package:fospresence/core/constants/helper.dart';

class CustomToast extends StatelessWidget {
  final String message;
  final bool isSuccess;
  const CustomToast(
      {super.key, required this.message, required this.isSuccess});

  @override
  Widget build(BuildContext context) {
    const double iconSize = 25;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      decoration: BoxDecoration(
        border: globalWhiteBorder,
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.black54,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isSuccess
              ? const Icon(Icons.check,
                  color: Colors.greenAccent, size: iconSize)
              : const Icon(Icons.close,
                  color: Colors.redAccent, size: iconSize),
          const SizedBox(width: 12.0),
          Expanded(
            child: Text(
              message,
              overflow: TextOverflow.fade,
              style: textWhite14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
