import '../extras/tools.dart';

/**
 * DESTRUCTURACIÓN DE LISTAS
 * 
 * Podemos extraer los elementos de una lista usando la
 * técnica de desestructuración.
 */
void main() {
  // list example
  final somelist = [1, 2, 3];
  var [x, _, z] = somelist;
  print('x: $x, z: $z');
  // end message
  systemPause();
}
