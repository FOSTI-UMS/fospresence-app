import 'package:flutter/material.dart';

import '../../themes/dark_theme.dart';

class DatetimePicker {
  DatetimePicker._();
  static Future<DateTime?> showDatetimePicker(BuildContext context) {
    return showDatePicker(
        context: context,
        firstDate: DateTime(2024),
        lastDate: DateTime(2050),
        builder: (BuildContext context, Widget? child) => darkTheme(child));
  }
}
