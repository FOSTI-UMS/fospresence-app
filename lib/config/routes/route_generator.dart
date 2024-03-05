import 'package:flutter/material.dart';
import 'package:fospresence/config/routes/route_name.dart';
import 'package:fospresence/features/event/presentation/pages/add_event.dart';
import 'package:fospresence/features/event/presentation/pages/detail_event.dart';
import 'package:fospresence/features/event/presentation/pages/edit_event.dart';
import 'package:fospresence/features/event/presentation/pages/home.dart';
import 'package:page_transition/page_transition.dart';

class RouteGenerator {
  const RouteGenerator._();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    const int duration = 500;
    const Curve curve = Curves.easeIn;
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteName.detailEventScreen:
        return PageTransition(
          child: const DetailEventScreen(),
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: duration),
          curve: curve,
          isIos: true,
        );
      case RouteName.addEventScreen:
        return PageTransition(
          child: const AddEventScreen(),
          type: PageTransitionType.bottomToTop,
          duration: const Duration(milliseconds: duration),
          curve: curve,
          isIos: true,
        );
      case RouteName.editEventScreen:
        return PageTransition(
          child: const EditEventScreen(),
          type: PageTransitionType.bottomToTop,
          duration: const Duration(milliseconds: duration),
          curve: curve,
          isIos: true,
        );
      default:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
  }
}
