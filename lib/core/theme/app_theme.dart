import 'package:flutter/material.dart';

class GlobalThemData {
  static ThemeData darkTheme = ThemeData(
    canvasColor: Color(0xFF1A1A1A),
    cardColor: Color(0xFF242424),
    primaryColor: const Color(0xFFFF6B6B),
    brightness: Brightness.dark,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 64.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'Roboto', // Fuente para encabezados
      ),
      displayMedium: TextStyle(
        fontSize: 56.0,
        color: Colors.white,
        fontFamily: 'Roboto', // Fuente para texto del cuerpo
      ),
      displaySmall: TextStyle(
        fontSize: 48.0,
        color: Colors.white,
        fontFamily: 'Roboto', // Fuente para texto del cuerpo
      ),
      headlineLarge: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'Roboto',
      ),
      headlineMedium: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'Roboto',
      ),
      headlineSmall: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontFamily: 'Roboto',
      ),
      titleLarge: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'Roboto',
      ),
      titleMedium: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontFamily: 'Roboto',
      ),
      titleSmall: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontFamily: 'Roboto',
      ),
      bodyLarge: TextStyle(
        fontSize: 16.0,
        color: Color(0xFFADADAD),
        fontFamily: 'Roboto',
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0,
        color: Color(0xFFADADAD),
        fontFamily: 'Roboto',
      ),
      bodySmall: TextStyle(
        fontSize: 12.0,
        color: Color(0xFFADADAD),
        fontFamily: 'Roboto',
      ),
      labelLarge: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFF787878),
        fontFamily: 'Roboto',
      ),
      labelMedium: TextStyle(
        fontSize: 12.0,
        color: Color(0xFF787878),
        fontFamily: 'Roboto',
      ),
      labelSmall: TextStyle(
        fontSize: 10.0,
        color: Color(0xFF787878),
        fontFamily: 'Roboto',
      ),
    ),
    textButtonTheme: TextButtonThemeData(),
  );

  static ThemeData ligthTheme = ThemeData(
      canvasColor: Color(0xFFF6F7F9),
      primaryColor: const Color(0xFFDC5027),
      brightness: Brightness.light);
}
