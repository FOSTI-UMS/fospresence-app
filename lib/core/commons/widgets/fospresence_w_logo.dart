import 'package:flutter/material.dart';

class FosPresenceWithLogo extends StatelessWidget {
  final double sizeFostiLogo;
  final TextStyle textSize;
  const FosPresenceWithLogo({super.key, required this.sizeFostiLogo, required this.textSize});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: textSize.copyWith(fontWeight: FontWeight.w600),
        children: [
          WidgetSpan(
            child: Container(
              height: sizeFostiLogo,
              width: sizeFostiLogo,
              margin: const EdgeInsets.only(left: 0, right: 6),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: Colors.white),
              ),
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
    );
  }
}
