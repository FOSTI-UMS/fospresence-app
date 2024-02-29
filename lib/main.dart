import 'package:flutter/material.dart';
import 'package:fospresence/core/themes/light_theme.dart';
import 'package:fospresence/features/addEvent/presentation/pages/add_event.dart';

void main() {
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
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: child!,
        );
      },
      theme: lightThemeData,
      home: const AddEventScreen(),
    );
  }
}
