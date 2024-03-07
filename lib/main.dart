import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fospresence/core/di/di_bloc.dart';
import 'firebase_options.dart';

import 'core/di/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await init();
  runApp(const GlobalBlocProviders());
}
