import 'package:flutter/material.dart';
import 'package:flutter_skilaverkefni_3/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor:Color.fromARGB(255, 78, 32, 184),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
         elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 16,
              ),
            ),
      ),
      //default themeMode: ThemeMode.system, //default
      home: const Expenses(),
    ),
  );
}
//playerName
// youDied
// youSurvived
// torch
// ---- navigation/pages -----
// startGame
// ogreCaveEnterance
// ogreCaveFirstBranch
// wayOne
// wayTwo
// wayThree
// ogreLair
// ogreTrove
// ogreTrap
// ----interactables-----
// loot
// 	magic sword
// 	gold
// frontalAttack
// sneakAttack
// 	successful
// 	failed
// ---- reloads -----
// tryAgain
// victoryScreen 