import '../extras/tools.dart';

/**
 * FUNCIÓN MAP
 * 
 * Aplica una función argumento a cada uno de los elementos
 * de un iterable. Retorna un nuevo iterable.
 */
void main() {
  // some list
  final someInts = [1, 2, 3, 4, 5];

  // obtenemos dobles de lista anterior
  final doublesInt = someInts.map((x) => 2 * x).toList();
  print('doublesInt: $doublesInt, with type: ${doublesInt.runtimeType}');

  // lista de strings
  final names = <String>[
    'flutter',
    'google',
    'apple',
    'kotlin',
    'android',
    'vercel',
    'react',
    'javascript',
  ];

  final wordsCounts = names.map((word) => word.length).toList();
  if (wordsCounts.length != names.length) {
    print('Error al ejecutar.');
    return;
  }

  int size = wordsCounts.length;
  for (int i = 0; i < size; i++) {
    print('${names[i]} with length ${wordsCounts[i]}');
  }

  // end message
  systemPause();
}
