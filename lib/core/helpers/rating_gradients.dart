import 'package:flutter/material.dart';

// Clase que contiene métodos estáticos para obtener gradientes de colores según el promedio de votos.

class RatingHelpers {
  static List<Color> getGradients(double voteAverage) {
    if (voteAverage >= 8 && voteAverage <= 10) {
      return [Colors.green.shade500, Colors.green.shade900];
    } else if (voteAverage >= 6 && voteAverage < 8) {
      return [Colors.yellow.shade700, Colors.yellow.shade900];
    }
    return [Colors.red.shade500, Colors.red.shade900];
  }
}