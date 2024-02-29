import 'package:flutter/material.dart';

import '../constants/colors.dart';

ThemeData get darkTheme => ThemeData(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
          backgroundColor: primaryColor, foregroundColor: Colors.white),
    );
