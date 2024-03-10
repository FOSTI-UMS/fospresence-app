import 'package:flutter/material.dart';
import 'package:fospresence/features/event/presentation/widgets/detail_event/search.dart';
import 'package:fospresence/features/event/presentation/widgets/detail_event/user_list_view.dart';
import 'package:fospresence/core/commons/widgets/background_w_logo.dart';
import '../../../../core/constants/colors.dart';
import '../widgets/detail_event/sliver_app_bar.dart';

class DetailEventScreen extends StatelessWidget {
  const DetailEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [const DetailEventSliverAppBar()],
        body: Container(
          decoration: BoxDecoration(color: appDarkBgColor),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                DetailEventSearch(),
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [BackgroundWithLogo(), UserListView()],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
