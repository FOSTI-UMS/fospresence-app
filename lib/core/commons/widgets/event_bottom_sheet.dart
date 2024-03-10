import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/routes/route_name.dart';
import '../../constants/colors.dart';
import '../../constants/font.dart';
import '../../constants/helper.dart';

class EventBottomSheet {
  EventBottomSheet._();
  static showSheet(BuildContext context) {
    return showBottomSheet(
      backgroundColor: Colors.transparent,
      enableDrag: false,
      context: context,
      builder: (context) => Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  height: MediaQuery.of(context).size.height - 160,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: const SizedBox(),
              ),
              SizedBox(
                height: 160,
                child: CupertinoActionSheet(
                  cancelButton: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      decoration: BoxDecoration(
                          border: globalWhiteBorder,
                          gradient: LinearGradient(
                              colors: primaryGradientColor,
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Close", textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                  actions: [
                    GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(RouteName.editEventScreen)
                          .then((_) => Navigator.of(context).pop()),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12.5),
                                topRight: Radius.circular(12.5)),
                            border: globalWhiteBorder,
                            gradient: LinearGradient(
                                colors: primaryGradientColor,
                                end: Alignment.centerLeft,
                                begin: Alignment.centerRight)),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("Edit", textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Theme(
                            data: ThemeData.dark(),
                            child: CupertinoAlertDialog(
                              title: Text("Delete",
                                  style: textWhite18.copyWith(
                                      fontWeight: FontWeight.w700)),
                              actions: [
                                CupertinoDialogAction(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text("Cancel",
                                      style: textWhite14.copyWith(
                                          color: Colors.redAccent)),
                                ),
                                CupertinoDialogAction(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text("Confirm",
                                      style: textWhite14.copyWith(
                                          color: Colors.blueAccent)),
                                ),
                              ],
                              content: Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(
                                        text: "Are you sure to delete "),
                                    TextSpan(
                                      text: "FOSTIFEST ?",
                                      style: textWhite14.copyWith(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ).then((_) => Navigator.of(context).pop());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: globalWhiteBorder,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(12.5),
                              bottomRight: Radius.circular(12.5)),
                          gradient: LinearGradient(
                              colors: primaryGradientColor,
                              end: Alignment.centerLeft,
                              begin: Alignment.centerRight),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text("Delete", textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
