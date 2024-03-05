import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fospresence/core/constants/font.dart';

import '../../../../../config/routes/route_name.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    const int listViewLength = 10;
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: listViewLength,
          separatorBuilder: (context, index) => const SizedBox(height: 5),
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(
                top: index == 0 ? 10 : 0,
                bottom: index == listViewLength - 1 ? 10 : 0),
            child: GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, RouteName.detailEventScreen),
              child: Container(
                height: 100,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.9)),
                child: Center(
                  child: ListTile(
                    title: const Text("FOSTIFEST"),
                    subtitle: const Text("Saturday-30-February-2024"),
                    trailing: GestureDetector(
                        onTap: () => _showSheet(context),
                        child: SvgPicture.asset("assets/svg/more_vert.svg")),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _showSheet(BuildContext context) {
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
                    child: const SizedBox(
                      child: Padding(
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
                      child: const SizedBox(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("Edit", textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => CupertinoAlertDialog(
                            title: Text("Delete",
                                style: textDark18.copyWith(
                                    fontWeight: FontWeight.w700)),
                            actions: [
                              CupertinoDialogAction(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text("Cancel",
                                    style: textDark14.copyWith(
                                        color: Colors.redAccent)),
                              ),
                              CupertinoDialogAction(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text("Confirm",
                                    style: textDark14.copyWith(
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
                                    style: textDark14.copyWith(
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ).then((_) => Navigator.of(context).pop());
                      },
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Delete",
                              textAlign: TextAlign.center, style: textDark14),
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
