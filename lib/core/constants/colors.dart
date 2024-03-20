import 'package:flutter/material.dart';

// =========== DARK COLOR =============
Color get primaryColor => const Color(0xFF043143);
Color get secondaryColor => const Color(0xFF081C28);
List<Color> get primaryGradientColor => [secondaryColor, primaryColor];
Color get appDarkBgColor => const Color(0xFF0B0B0D);
List<Color> get darkCardGradientColor =>
    [primaryColor.withOpacity(0.9), Colors.white];
final Border lightGlobalWhiteBorder =
    Border.all(color: appDarkBgColor, width: 0.2);



// ========== LIGHT COLOR ==============
Color get appLightBgColor => const Color(0xFFEDF2F8);
Color get primaryLightColor => const Color(0xFF343a40);
Color get secondaryLightColor => const Color(0xFFf8f9fa);
List<Color> get primaryLightGradientColor =>
    [appLightBgColor, primaryLightColor];
List<Color> get lightCardGradientColor =>
    [primaryLightColor.withOpacity(0.9), Colors.white];
final Border darkGlobalWhiteBorder =
    Border.all(color: appLightBgColor, width: 0.2);

// ============= GLOBAL COLOR ======================
Color get lightGrey => const Color.fromARGB(255, 228, 226, 226);
Color get blue => Colors.blue;
Color get splashColor => const Color.fromARGB(88, 0, 0, 0);
