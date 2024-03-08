import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/core/constants/font.dart';

import '../../../../../config/routes/route_name.dart';
import '../../../../../core/commons/utils/initial_animation.dart';
import '../../../../../core/constants/helper.dart';
import '../../../../../core/di/injection_container.dart';

class EventCard extends StatefulWidget {
  const EventCard({super.key});

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  late final InitialAnimation _initialAnimation;

  Future<void> _playAnimation() async => await _initialAnimation
      .playInitialAnimation(setState: () => setState(() {}));

  @override
  void initState() {
    super.initState();
    _initialAnimation = sl<InitialAnimation>();
    _playAnimation();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const int listViewLength = 10;
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 35,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 5),
              itemCount: 9,
              itemBuilder: (context, index) => Padding(
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
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listViewLength,
                separatorBuilder: (context, index) => const SizedBox(height: 5),
                itemBuilder: (context, index) => FadeInLeft(
                  from: _initialAnimation.animationIsPlaying ? 500 : 0,
                  duration: Duration(
                      milliseconds: _initialAnimation.animationIsPlaying
                          ? _initialAnimation.animationDuration + 600 * index
                          : 0),
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: index == listViewLength - 1 ? 10 : 0),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, RouteName.detailEventScreen),
                      child: Container(
                        height: 100,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          border: globalWhiteBorder,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.white.withOpacity(0.9),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              primaryColor.withOpacity(0.9),
                              Colors.black
                            ],
                          ),
                        ),
                        child: Center(
                          child: ListTile(
                            title: Text("FOSTIFEST",
                                style: textWhite18.copyWith(
                                    fontWeight: FontWeight.w700)),
                            subtitle: Text("Saturday-30-February-2024",
                                style: textWhite12),
                            trailing: GestureDetector(
                                onTap: () => _showSheet(context),
                                child: SvgPicture.asset(
                                    "assets/svg/more_vert.svg")),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
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
                                begin: Alignment.centerRight)),
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
