import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fospresence/config/routes/route_name.dart';

class UserListView extends StatelessWidget {
  const UserListView({super.key});

  @override
  Widget build(BuildContext context) {
    const int listViewLength = 10;
    return Expanded(
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
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
              onTap: () => Navigator.pushNamed(context, RouteName.homeScreen),
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
                      onTap: () {},
                      child: SvgPicture.asset("assets/svg/more_vert.svg"),
                    ),
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
