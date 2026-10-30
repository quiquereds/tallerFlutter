import 'package:intl/intl.dart';

// Esta clase contiene métodos estáticos para formatear números y fechas de manera legible para el usuario.

class HumanFormats {
  /// Creamos un método estático para no generar instancias de la clase
  /// y poder utilizarlo directamente
  static String number(double number) {
    return NumberFormat.compactCurrency(
      decimalDigits: 1,
      locale: 'es',
    ).format(number);
  }

  // Formato legible a la fecha
  static String shortDate(DateTime date) {
    // Creamos una instancia de DateFormat en español
    final format = DateFormat.yMMMEd('es');

    // Retornamos la fecha con el nuevo formato
    return format.format(date);
  }

  // Método para obtener el año
  static String getYear(DateTime date) {
    // Creamos una instancia de DateFormat en español
    final format = DateFormat.y('es');

    // Retornamos la fecha con el nuevo formato
    return format.format(date);
  }
}