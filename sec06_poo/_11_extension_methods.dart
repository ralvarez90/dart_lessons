import '../extras/tools.dart';

/**
 * EXTENSION METHODS
 * 
 * Permiten añadir funcionalidades a clases ya existentes
 * sin necesidad de extenderlas. Se emplea la palabra
 * reservada extension.
 * 
 * La sintaxis es de la forma:
 * extension NombreExtension on ClaseAExtender {
 *  se declaran metodos
 * }
 */

extension WeekDay on DateTime {
  String getWeekDay() {
    switch (weekday) {
      case 0:
        return 'Domingo';
      case 1:
        return 'Lunes';
      case 2:
        return 'Martes';
      case 3:
        return 'Miércoles';
      case 4:
        return 'Jueves';
      case 5:
        return 'Viernes';
      default:
        return 'Sábado';
    }
  }
}

// Run application
void main(List<String> args) {
  // cremos instancia de datetine
  final dt = DateTime.now();
  print(dt);

  // uso de extension method
  print('Hoy es día ${dt.getWeekDay()}');

  // end message
  systemPause();
}
