import 'package:flutter/material.dart';

class AppThemeData {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  const AppThemeData._();

  /// The dark theme app.
  static ThemeData get dark {
    return ThemeData.dark().copyWith(
      useMaterial3: true,
    );
  }

  /// The main light theme data.
  static ThemeData get light {
    return ThemeData.light().copyWith(
      useMaterial3: true,
    );
  }
}
