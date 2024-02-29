import 'package:flutter/material.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/core/constants/font.dart';

ThemeData get lightTheme => ThemeData(
      scaffoldBackgroundColor: appLightBgColor,
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          fontFamily: "Nunito",
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: textDark20,
        bodyMedium: textDark14,
        bodySmall: textDark10,
        titleLarge: textDark22,
        titleMedium: textDark16,
        titleSmall: textDark14,
        headlineLarge: textDark18,
        headlineMedium: textDark14,
        headlineSmall: textDark12,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
    );
