import 'package:alex_astudillo_erp/ui/theme/app_theme_color.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  const AppThemeData._();

  /// The dark theme app.
  static ThemeData get dark {
    const AppThemeColor color = AppThemeColor(
      primary: Colors.blue,
    );
    return ThemeData.dark().copyWith(
      useMaterial3: true,
      extensions: <ThemeExtension<dynamic>>[color],
    );
  }

  /// The main light theme data.
  static ThemeData get light {
    const AppThemeColor color = AppThemeColor(
      primary: Colors.blue,
    );
    return ThemeData.light().copyWith(
      useMaterial3: true,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      extensions: <ThemeExtension<dynamic>>[color],
    );
  }
}
