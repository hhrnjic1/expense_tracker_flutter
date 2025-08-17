import 'package:flutter/material.dart';
import 'package:expenses_tracker_flutter/widget/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromRGBO(255, 96, 69, 181));
void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        )),
    home: Expenses(),
  ));
}
