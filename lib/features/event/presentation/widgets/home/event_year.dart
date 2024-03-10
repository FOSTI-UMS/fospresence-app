import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/font.dart';
import '../../../../../core/constants/helper.dart';

class EventYear extends StatelessWidget {
  const EventYear({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 35,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 5),
        itemCount: 10,
        itemBuilder: (context, index) => _buildContent(index),
      ),
    );
  }

  Padding _buildContent(int index) {
    const int listViewLength = 10;
    return Padding(
      padding: EdgeInsets.only(
          left: index == 0 ? 10 : 0,
          right: index == listViewLength - 1 ? 10 : 0),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            border: globalWhiteBorder,
            color: index == 0 ? primaryColor : secondaryColor,
            borderRadius: BorderRadius.circular(18)),
        child: Text("${2024 + index}", style: textWhite14),
      ),
    );
  }
}
