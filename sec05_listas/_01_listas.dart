import '../extras/tools.dart';

/**
 * LISTAS
 * 
 * Son colecciones mutables o inmutables de objetos de un mismo
 * tipo. Se pueden crear de la forma:
 * List<T> donde T es el tipo de dato genérico que almacenará.
 */
void main(List<String> args) {
  // creamos listas
  final someItems = <num>[1, 2, 1.2, 0.1, -1];
  print('someItems: $someItems, with type: ${someItems.runtimeType}');

  // end message
  systemPause();
}
