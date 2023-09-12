import 'package:flutter/material.dart';
import 'package:expenses_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));
void main() {
  runApp(
     MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        )

      ),
      home : const Expenses()
    ),
  );
}
