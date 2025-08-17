import 'package:flutter/material.dart';
import 'package:expenses_tracker_flutter/widget/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromRGBO(255, 96, 69, 181));

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 125));
void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      colorScheme: kDarkColorScheme,
      appBarTheme: AppBarTheme().copyWith(
        backgroundColor: kDarkColorScheme.onPrimary,
      ),
      cardTheme: CardTheme().copyWith(
        color: kDarkColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kDarkColorScheme.primaryContainer
        )
      ),
    ),
    theme: ThemeData().copyWith(
      colorScheme: kColorScheme,
      appBarTheme: AppBarTheme().copyWith(
        backgroundColor: kColorScheme.onPrimaryContainer,
        foregroundColor: kColorScheme.primaryContainer,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer
        )
      ),
      cardTheme: CardTheme().copyWith(
        color: kColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    ),
    themeMode: ThemeMode.system,
    home: Expenses(),
  ));
}
