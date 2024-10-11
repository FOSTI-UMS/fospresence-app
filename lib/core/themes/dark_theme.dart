import 'package:flutter/material.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/core/constants/font.dart';

ThemeData get darkThemeData => ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: appDarkBgColor,
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,
        backgroundColor: primaryDarkColor,
        foregroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontFamily: "Nunito",
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          side: const BorderSide(width: 0.2, color: Colors.white),
          splashFactory: InkRipple.splashFactory,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          foregroundColor: Colors.white,
          elevation: 0.5,
          textStyle: textWhite14.copyWith(fontWeight: FontWeight.w600),
          backgroundColor: primaryDarkColor,
        ),
      ),
      splashFactory: InkRipple.splashFactory,
      splashColor: splashColor,
      textTheme: TextTheme(
        bodyLarge: textWhite20,
        bodyMedium: textWhite14,
        bodySmall: textWhite10,
        titleLarge: textWhite22,
        titleMedium: textWhite16,
        titleSmall: textWhite14,
        headlineLarge: textWhite18,
        headlineMedium: textWhite14,
        headlineSmall: textWhite12,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Colors.white,
        selectionColor: primaryDarkColor.withOpacity(0.3),
        selectionHandleColor: primaryDarkColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        errorMaxLines: 3,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        hintStyle: textWhite14.copyWith(color: Colors.grey),
        helperStyle: textWhite14.copyWith(color: Colors.grey),
        errorStyle: textWhite10.copyWith(color: Colors.redAccent),
        fillColor: Colors.black,
        labelStyle: textWhite14.copyWith(color: Colors.white),
        suffixIconColor: Colors.white,
        prefixIconColor: Colors.white,
        filled: true,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0.8, color: Colors.redAccent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0.8, color: Colors.redAccent),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 0.2, color: lightGrey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 0.2, color: lightGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0.8, color: Colors.white),
        ),
      ),
      chipTheme: ChipThemeData(
        iconTheme: const IconThemeData(color: Colors.white),
        side: BorderSide.none,
        padding: const EdgeInsets.all(10),
        labelStyle: textWhite12,
        elevation: 0,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: Colors.black,
        weekdayStyle: textWhite14.copyWith(color: blue),
        confirmButtonStyle: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(blue),
          textStyle: MaterialStatePropertyAll(
            textWhite14.copyWith(color: blue),
          ),
        ),
        rangeSelectionBackgroundColor: blue,
        rangePickerHeaderBackgroundColor: blue,
        surfaceTintColor: blue,
        dayForegroundColor: const MaterialStatePropertyAll(Colors.white),
        dividerColor: blue,
        dayOverlayColor: MaterialStatePropertyAll(blue),
        rangePickerBackgroundColor: blue,
        todayBorder: BorderSide(
          color: blue,
        ),
        rangePickerSurfaceTintColor: blue,
        rangePickerHeaderForegroundColor: blue,
        yearStyle: textWhite14,
        yearOverlayColor: MaterialStatePropertyAll(blue),
        todayForegroundColor: const MaterialStatePropertyAll(Colors.blue),
        rangeSelectionOverlayColor: MaterialStatePropertyAll(blue),
        cancelButtonStyle: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(blue),
          textStyle: MaterialStatePropertyAll(
            textWhite14.copyWith(color: blue),
          ),
        ),
      ),
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: primaryDarkColor,
        onPrimary: Colors.white,
        secondary: secondaryColor,
        onSecondary: Colors.white,
        primaryContainer: Colors.black,
        onPrimaryContainer: Colors.white,
        secondaryContainer: Colors.black.withOpacity(0.9),
        onSecondaryContainer: Colors.white,
        tertiaryContainer: Colors.blue.withOpacity(0.3),
        onTertiaryContainer: Colors.white,
        error: Colors.red,
        onError: Colors.red,
        background: appDarkBgColor,
        onBackground: Colors.white,
        surface: primaryDarkColor,
        onSurface: Colors.white,
        shadow: shimmerDarkColor,
        outline: Colors.white,
      ),
    );

Theme darkTheme(Widget? child) => Theme(
    data: darkThemeData.copyWith(primaryColor: primaryDarkColor), child: child!);
