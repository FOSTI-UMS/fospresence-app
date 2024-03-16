import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fospresence/core/di/di_bloc.dart';
import 'firebase_options.dart';
import 'core/di/injection_container.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(83, 0, 0, 0),
        systemNavigationBarColor: Colors.transparent,
        
      ),
    );
  await initializeDateFormatting('id_ID', null);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await init();
  runApp(const GlobalBlocProviders());
}
