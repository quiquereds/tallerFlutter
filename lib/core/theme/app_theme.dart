import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Esta clase define el tema de la aplicación, incluyendo colores, fuentes y estilos de texto.
class AppTheme {
  ThemeData getTheme() => ThemeData(
        brightness: Brightness.dark,
        // Usamos un color hexadecimal
        colorSchemeSeed: const Color(0xFF135CC9),
        // Definimos las fuentes
        fontFamily: GoogleFonts.montserrat().fontFamily,
        // Tema de los textos
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          displayMedium: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          displaySmall: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          titleSmall: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        // Configuración de colores
        scaffoldBackgroundColor: const Color(0xFF0F0F16),
      );
}