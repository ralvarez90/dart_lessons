import 'dart:math';

import '../extras/tools.dart';

/**
 * INDICES DE LISTAS
 * 
 * indexOf
 * Retorna el índice del primer elemento a buscar dentro de
 * la lista, regresa -1 si no existen tal.
 * 
 * indexWhere
 * Recibe un callback que retorna un booleano, retorna el primer
 * índice de un elemento cuando cumpla la condición indicada
 * por el callback.
 */
void main() {
  // some list
  final someInts = [1, 2, 3];
  print(someInts.indexOf(2));

  // uso de indexWhere
  for (int i = 1; i <= 10; i++) {
    someInts.add(Random().nextInt(100));
  }

  // buscamos indice de primer múltiplo de 7
  final indice = getFirstIndexMultiple(someInts, 7);
  if (indice == -1) {
    print('Sin múltiplos de 7.');
    systemPause();
    return;
  }

  print('Índice: $indice');
  print('someInts[$indice] -> ${someInts[indice]}');

  // end message
  systemPause();
}
