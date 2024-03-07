import 'package:flutter/material.dart';
import 'package:fospresence/features/event/presentation/pages/home.dart';

import '../config/routes/route_generator.dart';
import '../config/routes/route_name.dart';
import '../config/themes/light_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(
            overscroll: false, physics: const BouncingScrollPhysics()),
        child: child!,
      ),
      onGenerateRoute: RouteGenerator.onGenerateRoute,
      initialRoute: RouteName.homeScreen,
      theme: lightThemeData,
      home: const HomeScreen(),
    );
  }
}
