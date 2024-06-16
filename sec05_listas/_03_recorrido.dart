import 'dart:math';

import '../extras/tools.dart';

/**
 * RECORRIDO DE LISTAS
 * 
 * Recordemos que cualquier variable se puede declarar con
 * var, final o const. Las variables final que almacenen una
 * lista puede cambiar el estado internod e la lista pero 
 * no al referencia. 
 * 
 * Las listas son iterables, por lo que se pueden recorrer
 * de manera indexada.
 * 
 * Podemos recorrer una lista empleando el ciclo forin, que
 * consiste en asignar a una variable cada elemento dentro
 * de la lista y esta emplerse dentro de dicho bloque, ver
 * ejemplo.
 * 
 * La sintaxis de un forin es:
 * for(var n in nombrelista) {...} donde nombreLista es una
 * lista.
 * 
 * Una tercer forma de recorrer una colección es empleando 
 * el método forEach, que recibe un callback que se aplica
 * a cada elemento de la colección.
 */
void main() {
  // lista de referencia inmutable
  final testList = <int>[];
  for (int i = 1; i <= 10; i++) {
    testList.add(Random().nextInt(20));
  }

  // uso de for e índice
  print('Show items from list with size: ${testList.length} (use index[])');
  for (int i = 0; i < testList.length; i++) {
    print('someList[$i] -> ${testList[i]}');
  }

  // uso de forin en listas
  print('Show items from list with forin for.');
  for (var n in testList) {
    print('The item $n has a type: ${n.runtimeType}');
  }

  // uso de foreach
  testList.forEach(print);
  printSeparator();

  testList.forEach((x) {
    print(getNext(x));
  });

  // end message
  systemPause();
}
