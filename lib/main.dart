import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kcolorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(255, 96, 59, 181),
);

void main() {
  runApp(
    MaterialApp(
      // theme: ThemeData(useMaterial3: true),
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kcolorScheme,
          appBarTheme: AppBarTheme().copyWith(
            backgroundColor: kcolorScheme.onPrimaryContainer,
            foregroundColor: kcolorScheme.primaryContainer,
          )),
      home: const Expenses(),
    ),
  );
}
