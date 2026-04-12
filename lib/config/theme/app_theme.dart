import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF46BCC3);
  static const Color textSecondary = Color(0xFF7C8788);
  static const Color grayMedium = Color(0xFFB1BCBD);
  static const Color grayLight = Color(0xFFBCCCCD);
  static const Color backgroundLight = Color(0xFFF5F9F9);
  static const Color surfaceLight = Color(0xFFF1F5F5);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color success = Color(0xFF138F4D);
  static const Color error = Color(0xFFF21A1A);
  // En app_theme.dart
  static const Color surfaceTintLight = Color(
    0xFFEAF5F6,
  ); // Blanco con un toque sutil de azul

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: white,
      secondary: primaryColor,
      onSecondary: white,
      error: error,
      onError: white,
      surface:
          white, // Fondo de las tarjetas (Cards) en tu pantalla de favoritos
      onSurface: black, // Color del texto principal
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: black, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(color: black),
      bodyMedium: TextStyle(color: textSecondary), // Textos descriptivos grises
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor:
          Color.fromARGB(255, 180, 238, 243), 
          // El color que definiste en la línea 15
      elevation: 0,
      scrolledUnderElevation: 0, // Mantiene el color fijo al hacer scroll
      centerTitle: true,
      shape: Border(
        bottom: BorderSide(
          color: grayLight, // La línea delgada usando tu color de la línea 7
          width: 1,
        ),
      ),
    ),
  );
}
