import '../extras/tools.dart';

/**
 * USO DE WHERE
 * 
 * El método where permite filtrar elementos dentro de una lista.
 * Recibe un callback que retorna un booleano. Este retorna
 * un iterable que se puede castear a lista con toList.
 */
void main() {
  // lista de enteros
  final someIntegers = [1, 2, 3, 4, 5];
  final pares = someIntegers.where((x) => x % 2 == 0).toList();
  print('Enteros: $someIntegers');
  print('Pares: $pares');

  // end message
  systemPause();
}
