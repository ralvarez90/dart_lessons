import 'dart:math';

import '../extras/tools.dart';

/**
 * RECORDS
 * 
 * Permiten devolver dos o más datos diferentes sin necesidad
 * de incluirlos en un mapa o una lista. Son similares a las named
 * tuples en python.
 * 
 * Podemos destructurarlo empleando el operador de destructuración
 * de la forma.
 * 
 * var (var1, var2) = record;
 * 
 * Podemos tener n campos en un record,
 */
void main() {
  // datos desde un record
  var (str, size) = getStrSize(input('Ingrese string: '));
  print('String $str, with length: $size');
  print('');

  // generamos 10 puntos en el spacio
  final List<(int, int, int)> items = [];
  for (int i = 0; i < 1000; i++) {
    items.add(randomPoint());
  }

  // iteramos
  for (var tuple in items) {
    print(tuple);
  }

  printSeparator();

  // destructuramos
  var (x, y, z) = randomPoint();
  print('($x, $y, $z)');
  var otherP = randomPoint();
  print('(${otherP.$1}, ${otherP.$2}, ${otherP.$3})');

  // end message
  systemPause();
}

/// Retorna un record con el string argumento y su
/// longitud.
(String, int) getStrSize(String str) {
  return (str, str.length);
}

/// Retorna la representación de un punto en el
/// espacio.
(int, int, int) randomPoint() {
  final rnd = Random.secure();
  return (rnd.nextInt(1 << 32), rnd.nextInt(1 << 32), rnd.nextInt(1 << 32));
}
