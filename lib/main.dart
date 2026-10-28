import 'package:flutter/material.dart';

import 'widgets/expenses.dart';

import 'package:flutter/services.dart';

var colorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 96, 59, 181),
);

var darkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 5, 99, 125),
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((function) {
        runApp(
          MaterialApp(
            darkTheme: ThemeData.dark().copyWith(
              colorScheme: darkColorScheme,
              cardTheme: const CardThemeData().copyWith(
                color: darkColorScheme.secondaryContainer,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: darkColorScheme.primaryContainer,
                  foregroundColor: darkColorScheme.onPrimaryContainer,
                ),
              ),
            ),
            theme: ThemeData().copyWith(
              colorScheme: colorScheme,
              appBarTheme: const AppBarTheme().copyWith(
                backgroundColor: colorScheme.onPrimaryContainer,
                foregroundColor: colorScheme.primaryContainer,
              ),
              cardTheme: const CardThemeData().copyWith(
                color: colorScheme.secondaryContainer,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.primaryContainer,
                ),
              ),
              textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSecondaryContainer,
                  fontSize: 16,
                ),
              ),
            ),
            themeMode: ThemeMode.system,
            home: const Expenses(),
          ),
        );
      });
}
