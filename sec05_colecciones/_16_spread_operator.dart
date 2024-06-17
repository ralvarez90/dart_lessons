import '../extras/tools.dart';

/**
 * SPREAD OPERATOR
 * 
 * El operador de propagación es prácticamente el mismo que
 * existe en javascript. Podemos usar el operador de
 * propagacion con diversas colecciones.
 */
void main(List<String> args) {
  // some list
  final someNums = [1, 2, 3, 4, 5];
  final numsCopy = [...someNums];
  print(someNums);
  print(numsCopy);
  print(someNums == numsCopy);

  // end message
  systemPause();
}
