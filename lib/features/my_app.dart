import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fospresence/config/themes/dark_theme.dart';
import 'package:fospresence/config/themes/light_theme.dart';
import 'package:fospresence/features/event/presentation/pages/home.dart';

import '../config/routes/route_generator.dart';
import '../config/routes/route_name.dart';

late final FToast fToast;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GlobalKey<NavigatorState> navigatorKey;
  @override
  void initState() {
    navigatorKey = GlobalKey<NavigatorState>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fToast = FToast();
      fToast.init(navigatorKey.currentContext!);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const ScrollBehavior()
          .copyWith(overscroll: false, physics: const BouncingScrollPhysics()),
      builder: FToastBuilder(),
      navigatorKey: navigatorKey,
      onGenerateRoute: RouteGenerator.onGenerateRoute,
      initialRoute: RouteName.homeScreen,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      home: const HomeScreen(),
    );
  }
}
