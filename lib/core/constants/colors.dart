import 'package:flutter/material.dart';

// =========== DARK COLOR =============
Color get primaryColor => const Color(0xFF043143);
Color get secondaryColor => const Color.fromARGB(255, 2, 6, 8);
List<Color> get primaryGradientColor => [secondaryColor, primaryColor];
Color get appDarkBgColor => const Color(0xFF0B0B0D);
List<Color> get darkCardGradientColor =>
    [primaryColor.withOpacity(0.9), Colors.white];
Color get shimmerDarkColor => const Color.fromARGB(255, 1, 55, 78);

// ========== LIGHT COLOR ==============
Color get appLightBgColor => const Color(0xFFEDF2F8);
Color get primaryLightColor => const Color(0xFF343a40);
Color get secondaryLightColor => const Color(0xFFf8f9fa);
List<Color> get primaryLightGradientColor =>
    [appLightBgColor, primaryLightColor];
List<Color> lightCardGradientColor(BuildContext context) => [
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.secondary
    ];
List<Color> lightCardGradientColor2(BuildContext context) => [
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).colorScheme.primary
    ];
Color globalShimmerColor(BuildContext context) =>
    Theme.of(context).colorScheme.shadow;
final Border darkGlobalWhiteBorder =
    Border.all(color: appLightBgColor, width: 0.2);
Color get shimmerLightColor => appDarkBgColor.withOpacity(0.8);

// ============= GLOBAL COLOR ======================
Color get lightGrey => const Color.fromARGB(255, 228, 226, 226);
Color get blue => Colors.blue;
Color get splashColor => const Color.fromARGB(88, 0, 0, 0);
Color onPrimaryColor(BuildContext context) =>
    Theme.of(context).colorScheme.onPrimary;
Color onSecondaryColor(BuildContext context) =>
    Theme.of(context).colorScheme.onSecondary;
Color primaryContainerColor(BuildContext context) =>
    Theme.of(context).colorScheme.primaryContainer;
Color secondaryContainerColor(BuildContext context) =>
    Theme.of(context).colorScheme.secondaryContainer;
Color onPrimaryContainerColor(BuildContext context) =>
    Theme.of(context).colorScheme.onPrimaryContainer;
Color onSecondaryContainerColor(BuildContext context) =>
    Theme.of(context).colorScheme.onSecondaryContainer;
Color surfaceColor(BuildContext context) =>
    Theme.of(context).colorScheme.surface;
Color onSurfaceColor(BuildContext context) =>
    Theme.of(context).colorScheme.onSurface;
Color backgroundColor(BuildContext context) =>
    Theme.of(context).colorScheme.background;
Color onBackgroundColor(BuildContext context) =>
    Theme.of(context).colorScheme.onBackground;
Border globalBorder(BuildContext context) =>
    Border.all(color: Theme.of(context).colorScheme.surface, width: 0.2);
