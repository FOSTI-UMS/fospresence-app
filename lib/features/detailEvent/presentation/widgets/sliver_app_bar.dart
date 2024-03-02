import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fospresence/core/utils/initial_animation.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/font.dart';
import '../../../../core/services/injection_container.dart';

class DetailEventSliverAppBar extends StatefulWidget {
  const DetailEventSliverAppBar({super.key});

  @override
  State<DetailEventSliverAppBar> createState() =>
      _DetailEventSliverAppBarState();
}

class _DetailEventSliverAppBarState extends State<DetailEventSliverAppBar> {
  final double _sizeFostiLogo = 30;
  final double _sizeParticipantsCircle = 58;
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
    return SliverAppBar(
      backgroundColor: primaryColor,
      expandedHeight: 250,
      floating: true,
      automaticallyImplyLeading: false,
      centerTitle: true,
      toolbarHeight: 0.1,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        title: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios,
                        size: 20, color: Colors.white)),
                FadeInUp(
                  from: _initialAnimation.animationIsPlaying ? 100 : 0,
                  duration: Duration(
                      milliseconds: _initialAnimation.animationIsPlaying
                          ? _initialAnimation.animationDuration
                          : 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Participants",
                          style: textWhite18.copyWith(
                              fontWeight: FontWeight.w600)),
                      Container(
                        height: _sizeParticipantsCircle,
                        width: _sizeParticipantsCircle,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(right: 5),
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.circle,
                          border: Border.all(width: 1.5, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.blue.withOpacity(0.3),
                                blurRadius: 12.0,
                                spreadRadius: 8.0),
                          ],
                        ),
                        child: Center(
                          child: Text("20",
                              style: textWhite23.copyWith(
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                FadeInUp(
                  from: _initialAnimation.animationIsPlaying ? 100 : 0,
                  duration: Duration(
                      milliseconds: _initialAnimation.animationIsPlaying
                          ? _initialAnimation.animationDuration + 300
                          : 0),
                  child: Row(
                    children: [
                      Container(
                        height: _sizeFostiLogo,
                        width: _sizeFostiLogo,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: Colors.white)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(_sizeFostiLogo),
                          child: Image.asset(
                              "assets/images/fosti_rectangle_logo.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text("FOSTIFEST",
                            style: textWhite20.copyWith(
                                fontWeight: FontWeight.w700,
                                overflow: TextOverflow.ellipsis),
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                FadeInUp(
                  from: _initialAnimation.animationIsPlaying ? 100 : 0,
                  duration: Duration(
                      milliseconds: _initialAnimation.animationIsPlaying
                          ? _initialAnimation.animationDuration + 600
                          : 0),
                  child: Text(
                    "Saturday, 20 Jan 2024",
                    style: textWhite11.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/bg_detail_event.jpg",
                fit: BoxFit.cover, filterQuality: FilterQuality.low),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Color.fromARGB(90, 33, 150, 243)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
