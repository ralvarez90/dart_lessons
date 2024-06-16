import 'dart:math';

import '../extras/tools.dart';

/**
 * AGREGAR/ELIMINAR ELEMENTOS
 * 
 * Disponemos de diversos métodos para poder agregar o eliminar
 * elementos dentro de una lista.
 * 
 * add
 * Agrega al final de una lista un elemento.
 * 
 * insert
 * Requiere un índice y un elemento a agregar. Puede lanzar 
 * excepciones.
 * 
 * addAll
 * Permite agregar una secuencia de elementos a la lista, el
 * argumento es un iterable.
 * 
 * remove
 * Recibe el valor del elemento a eliminar. Retorna un booleano.
 * 
 * removeAt
 * Elimina elementos de una lista por índices, regresando el
 * elemento borrado.
 * 
 * removeWhere
 * Elimina elementos dentro de una lista que cumplan con cierta
 * condición.
 */
void main() {
  // some list int
  final someInts = <int>[];

  // agregamos 1000000 de aleatorios
  final randomInt = Random();
  for (int i = 1; i <= 1000000; i++) {
    someInts.add(randomInt.nextInt(1000));
  }

  // eliminamos uno por uno
  while (someInts.isNotEmpty) {
    someInts.removeLast();
  }

  input('\nContinuar. . . ');

  // llenamos nuevamente lista
  for (var i = 0; i < 1000000; i++) {
    someInts.add(randomInt.nextInt(1000));
  }

  // eliminamos pares
  someInts.removeWhere((n) {
    return n % 2 == 0;
  });

  // eliminamos menores a 100
  someInts.removeWhere((n) {
    return n > 100;
  });

  print('Elementos finales: ${someInts.length}');
  print(someInts);

  systemPause();
}
