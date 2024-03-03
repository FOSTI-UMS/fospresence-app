import 'package:flutter/material.dart';
import 'package:fospresence/core/themes/light_theme.dart';
import 'package:fospresence/features/home/presentation/pages/home.dart';

import 'core/services/injection_container.dart';

Future<void> main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(
              overscroll: false, physics: const BouncingScrollPhysics()),
          child: child!,
        );
      },
      theme: lightThemeData,
      home: const HomeScreen(),
    );
  }
}
