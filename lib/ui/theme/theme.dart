import 'package:flutter/material.dart';

final primaryColor = Colors.deepPurpleAccent.shade200;
const backgroundColor = Color.fromRGBO(230, 239, 255, 1);
final secondaryBackgroundColor = Colors.blueAccent.shade100.withOpacity(0.2);
final secondaryColor = Colors.blueAccent.shade100.withOpacity(0.7);

final mainTheme = ThemeData(
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: AppBarTheme(
      centerTitle: true,
      toolbarHeight: 100,
      backgroundColor: primaryColor,
      titleTextStyle: const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: primaryColor,
    selectedItemColor: Colors.lightBlueAccent.shade100,
    unselectedItemColor: Colors.white,
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  useMaterial3: true,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontWeight: FontWeight.w500, fontSize: 24),
    titleMedium: TextStyle(
        fontWeight: FontWeight.w500, fontSize: 20)
  )
);
