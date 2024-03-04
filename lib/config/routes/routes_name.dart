import 'package:flutter/material.dart';
import 'package:fospresence/config/routes/routes.dart';
import 'package:fospresence/features/event/presentation/pages/add_event.dart';
import 'package:fospresence/features/event/presentation/pages/detail_event.dart';
import 'package:fospresence/features/event/presentation/pages/edit_event.dart';
import 'package:fospresence/features/event/presentation/pages/home.dart';

class RouteGenerator {
  const RouteGenerator._();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouteName.detailEventScreen:
        return MaterialPageRoute(builder: (_) => const DetailEventScreen());
      case RouteName.addEventScreen:
        return MaterialPageRoute(builder: (_) => const AddEventScreen());
      case RouteName.editEventScreen:
        return MaterialPageRoute(builder: (_) => const EditEventScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
