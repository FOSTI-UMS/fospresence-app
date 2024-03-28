import 'package:flutter/material.dart';

// =========== DARK COLOR =============
Color get primaryDarkColor => const Color(0xFF043143);
Color get secondaryColor => const Color(0xFF081C28);
List<Color> get primaryGradientColor => [secondaryColor, primaryDarkColor];

Color get appDarkBgColor => const Color(0xFF0B0B0D);
List<Color> get darkCardGradientColor =>
    [primaryDarkColor.withOpacity(0.9), Colors.white];
Color get shimmerDarkColor => const Color.fromARGB(255, 1, 55, 78);

// ========== LIGHT COLOR ==============
Color get appLightBgColor => const Color(0xFFEDF2F8);
Color get primaryLightColor => const Color.fromARGB(255, 2, 124, 173);
Color get secondaryLightColor => const Color(0xFFf8f9fa);
List<Color> get primaryLightGradientColor =>
    [appLightBgColor, primaryLightColor];
List<Color> gradientColorLeftToRight(BuildContext context) => [
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.secondaryContainer
    ];
List<Color> gradientColorTopToBottom(BuildContext context) => [
      Theme.of(context).colorScheme.secondaryContainer,
      Theme.of(context).colorScheme.primary
    ];
final Border darkGlobalWhiteBorder =
    Border.all(color: appLightBgColor, width: 0.2);
Color get shimmerLightColor => appLightBgColor.withOpacity(0.5);

// ============= GLOBAL COLOR ======================
Color get lightGrey => const Color.fromARGB(255, 228, 226, 226);
Color get blue => Colors.blue;
Color get splashColor => const Color.fromARGB(88, 0, 0, 0);

Color primaryColor(BuildContext context) =>
    Theme.of(context).colorScheme.primary;
Color onPrimaryColor(BuildContext context) =>
    Theme.of(context).colorScheme.onPrimary;
Color onSecondaryColor(BuildContext context) =>
    Theme.of(context).colorScheme.onSecondary;
Color primaryContainerColor(BuildContext context) =>
    Theme.of(context).colorScheme.primaryContainer;
Color secondaryContainerColor(BuildContext context) =>
    Theme.of(context).colorScheme.secondaryContainer;
Color textColor(BuildContext context) =>
    Theme.of(context).colorScheme.onPrimaryContainer;
Color onSecondaryContainerColor(BuildContext context) =>
    Theme.of(context).colorScheme.onSecondaryContainer;
Color tertiaryContainerColor(BuildContext context) =>
    Theme.of(context).colorScheme.tertiaryContainer;
Color onTertiaryContainerColor(BuildContext context) =>
    Theme.of(context).colorScheme.onTertiaryContainer;
Color surfaceColor(BuildContext context) =>
    Theme.of(context).colorScheme.surface;
Color iconSvgColor(BuildContext context) =>
    Theme.of(context).colorScheme.onSurface;
Color outlineColor(BuildContext context) =>
    Theme.of(context).colorScheme.outline;

Color backgroundColor(BuildContext context) =>
    Theme.of(context).colorScheme.background;
Color onBackgroundColor(BuildContext context) =>
    Theme.of(context).colorScheme.onBackground;
Border globalBorder(BuildContext context) =>
    Border.all(color: outlineColor(context), width: 0.2);
Color globalShimmerColor(BuildContext context) =>
    Theme.of(context).colorScheme.shadow;
