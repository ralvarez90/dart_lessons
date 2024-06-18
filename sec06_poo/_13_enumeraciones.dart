import '../extras/tools.dart';

/**
 * ENUMERACIONES
 * 
 * Son tipos especiales de clases que se emplean para
 * agrupar constantes relacionadas.
 * 
 * Se emplea la palabre reservada enum.
 */
enum WeekDays {
  monday(1),
  tuesday(2),
  wednesday(3),
  thursday(4),
  friday(5),
  saturday(6),
  sunday(7);

  final int day;
  const WeekDays(this.day);
}

/// Run application
void main() {
  //
  final day = WeekDays.saturday;
  print('day is $day');

  // iteramos valores
  print('Listado de constantes en enumeración:');
  for (WeekDays wd in WeekDays.values) {
    print('- $wd, with number ${wd.day}');
  }

  // end message
  systemPause();
}
