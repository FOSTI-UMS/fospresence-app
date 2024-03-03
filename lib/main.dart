import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fospresence/config/themes/light_theme.dart';
import 'package:fospresence/features/event/presentation/pages/home.dart';
import 'firebase_options.dart';

import 'core/services/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
