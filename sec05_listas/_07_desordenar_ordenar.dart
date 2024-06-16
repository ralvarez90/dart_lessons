import 'dart:math';

import '../extras/tools.dart';

/**
 * DESORDENAR / ORDENAR LISTAS
 * 
 * shuffle
 * Método que permite desordenar los elementos de una lista.
 */
void main() {
  // random generator
  final random = Random();

  // lista de aleatorios
  final numbers = List.filled(10000000, 0);
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = random.nextInt(1000000);
  }

  // desordenamos elementos
  numbers.shuffle();

  // ordenamos
  numbers.sort((x, y) => x.compareTo(y));
  numbers.forEach(print);

  // end message
  systemPause();
}
