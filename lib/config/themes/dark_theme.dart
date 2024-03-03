import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

ThemeData get darkTheme => ThemeData(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
          backgroundColor: primaryColor, foregroundColor: Colors.white),
    );
