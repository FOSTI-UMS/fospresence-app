import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fospresence/config/routes/route_name.dart';

import '../../../../../core/commons/utils/initial_animation.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/font.dart';
import '../../../../../core/constants/helper.dart';
import '../../../../../core/di/injection_container.dart';

class UserListView extends StatefulWidget {
  const UserListView({super.key});

  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
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
                top: index == 0 ? 10 : 0,
                bottom: index == listViewLength - 1 ? 10 : 0),
            child: GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, RouteName.detailEventScreen),
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
                    colors: [primaryColor.withOpacity(0.9), Colors.black],
                  ),
                ),
                child: Center(
                  child: ListTile(
                    title: Text("FOSTIFEST",
                        style:
                            textWhite18.copyWith(fontWeight: FontWeight.w700)),
                    subtitle:
                        Text("Saturday-30-February-2024", style: textWhite12),
                    trailing: GestureDetector(
                        onTap: () {},
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
}
