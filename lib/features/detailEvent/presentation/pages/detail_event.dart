import 'package:flutter/material.dart';
import 'package:fospresence/features/detailEvent/presentation/widgets/search.dart';
import 'package:fospresence/features/detailEvent/presentation/widgets/user_list_view.dart';
import '../../../../core/constants/colors.dart';
import '../widgets/sliver_app_bar.dart';

class DetailEventScreen extends StatelessWidget {
  const DetailEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 60, 97),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [const DetailEventSliverAppBar()],
        body: Container(
          decoration: BoxDecoration(
            color: appLightBgColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [DetailEventSearch(), UserListView()],
            ),
          ),
        ),
      ),
    );
  }
}
