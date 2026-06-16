import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData hollowKnightTheme = ThemeData(
    brightness: Brightness.dark,

    scaffoldBackgroundColor: const Color(0xFF0B0F1A),

    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF7AA6D8),
      secondary: Color(0xFFDDEBFF),
      surface: Color(0xFF151B2A),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF101522),
      foregroundColor: Colors.white,
      centerTitle: true,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF101522),
      selectedItemColor: Color(0xFF7AA6D8),
      unselectedItemColor: Colors.grey,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF7AA6D8),
        foregroundColor: Colors.black,
      ),
    ),
  );
}