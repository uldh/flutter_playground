
import 'package:flutter/material.dart';
import 'package:flutterplayground/common_pages/colors.dart';

class AppThemeData {
  static const _lightFillColor = MColor.black1;
  static Color _lightFocusColor = Colors.black.withOpacity(0.12);

  static ColorScheme lightColorScheme = ColorScheme(
    primary: MColor.green,
    primaryVariant: const Color(0xFF117378),
    secondary: MColor.greenEBFCF9,
    secondaryVariant: const Color(0xFFFAFBFB),
    background: const Color(0xFFFFFFFF),
    surface: const Color(0xFFFAFBFB),
    error: _lightFillColor,
    onError: _lightFillColor,
    onBackground: Colors.white,
    onPrimary: _lightFillColor,
    onSecondary: const Color(0xFF322942),
    onSurface: const Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static ThemeData themeData(ColorScheme colorScheme) {
    return ThemeData(
      colorScheme: colorScheme,
      backgroundColor: colorScheme.background,
      appBarTheme: AppBarTheme(
        color: colorScheme.background,
        elevation: 0,
        brightness: colorScheme.brightness,
      ),
      focusColor: _lightFocusColor,
      primaryColor: colorScheme.primary,
      primarySwatch: Colors.green,
      disabledColor: MColor.greyCC,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(fontSize: 16),
        helperStyle: TextStyle(fontSize: 12),
      ),
      cursorColor: MColor.green,
    );
  }
}
