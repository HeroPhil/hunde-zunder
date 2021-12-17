import 'package:flutter/material.dart';

class UiTheme {
  static final _primaryColor = Colors.orange;
  static final _secondaryColor = Colors.orangeAccent;
  static final _primaryColorScheme =
      ColorScheme.fromSwatch(primarySwatch: _primaryColor);

  static final lightTheme = ThemeData.from(
    colorScheme: ColorScheme.light(
      primary: _primaryColor,
      secondary: _secondaryColor,
    ),
  ).copyWith(
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );

  static final darkTheme = ThemeData.from(
    colorScheme: ColorScheme.dark(
      primary: _primaryColor,
      secondary: _secondaryColor,
    ),
  ).copyWith(
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
