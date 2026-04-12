import 'package:flutter/material.dart';

class AppTheme {
  // Definimos tus constantes basadas en las fotos
  static const Color colorAppBar = Color.fromARGB(255, 240, 229, 249);
  static const Color colorButtons = Color(0xFFEAD4FF);
  static const Color colorBody = Color.fromARGB(255, 249, 242, 250);
  static const Color colorCards = Color(0xFFF6EFFA);
  static const Color textPrimary = Color(0xFF1C1B1F);
  static const Color textSecondary = Color(0xFF49454F);
  static const Color appBar = Color.fromARGB(255, 245, 244, 245);

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,

    // El color de fondo de toda la app (Body)
    scaffoldBackgroundColor: const Color.fromARGB(255, 246, 237, 247),

    colorScheme: const ColorScheme.light(
      primary: colorButtons, // El morado de tus botones
      onPrimary: textPrimary, // Texto sobre botones
      surface: colorCards, // Color por defecto para superficies
      onSurface: textPrimary,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: appBar,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: textPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      // Mantenemos la línea delgada pero con un tono que combine
      shape: Border(bottom: BorderSide(color: Color(0xFFE0D8E5), width: 0.5)),
    ),

    // Estilo global para los botones
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: colorButtons,
        foregroundColor: textPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    // Estilo para las Cards
  );
}
