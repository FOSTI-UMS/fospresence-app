import 'package:flutter/material.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/core/constants/font.dart';

ThemeData get lightThemeData => ThemeData(
      scaffoldBackgroundColor: appLightBgColor,
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          fontFamily: "Nunito",
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          splashFactory: InkRipple.splashFactory,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          foregroundColor: Colors.white,
          elevation: 0.5,
          textStyle: textWhite14.copyWith(fontWeight: FontWeight.w600),
          backgroundColor: primaryColor,
        ),
      ),
      splashFactory: InkRipple.splashFactory,
      splashColor: splashColor,
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
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Colors.black,
        selectionColor: primaryColor.withOpacity(0.3),
        selectionHandleColor: primaryColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        hintStyle: textDark14.copyWith(color: Colors.grey),
        helperStyle: textDark14.copyWith(color: Colors.grey),
        errorStyle: textDark10.copyWith(color: Colors.redAccent),
        fillColor: Colors.white,
        labelStyle: textDark14.copyWith(color: Colors.black),
        filled: true,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0.8, color: Colors.redAccent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0.8, color: Colors.redAccent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 0.2, color: lightGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0.8, color: Colors.black),
        ),
      ),
      chipTheme: ChipThemeData(
        iconTheme: IconThemeData(color: primaryColor),
        side: BorderSide.none,
        padding: const EdgeInsets.all(10),
        labelStyle: textDark12,
        elevation: 0,
      ),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: Colors.white,
        weekdayStyle: textDark14.copyWith(color: blue),
        confirmButtonStyle: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(blue),
          textStyle: MaterialStatePropertyAll(
            textDark14.copyWith(color: blue),
          ),
        ),
        rangeSelectionBackgroundColor: blue,
        rangePickerHeaderBackgroundColor: blue,
        surfaceTintColor: blue,
        dayForegroundColor: const MaterialStatePropertyAll(Colors.black),
        dividerColor: blue,
        dayOverlayColor: MaterialStatePropertyAll(blue),
        rangePickerBackgroundColor: blue,
        todayBorder: BorderSide(
          color: blue,
        ),
        rangePickerSurfaceTintColor: blue,
        rangePickerHeaderForegroundColor: blue,
        yearStyle: textDark14,
        yearOverlayColor: MaterialStatePropertyAll(blue),
        todayForegroundColor: const MaterialStatePropertyAll(Colors.blue),
        rangeSelectionOverlayColor: MaterialStatePropertyAll(blue),
        cancelButtonStyle: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(blue),
          textStyle: MaterialStatePropertyAll(
            textDark14.copyWith(color: blue),
          ),
        ),
      ),
    );

Theme lightTheme(Widget? child) => Theme(
    data: lightThemeData.copyWith(
      primaryColor: primaryColor, // Warna utama
      colorScheme: ColorScheme.light(primary: primaryColor),
    ),
    child: child!);
