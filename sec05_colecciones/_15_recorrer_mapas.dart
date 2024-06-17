/**
 * RECORRER MAPAS
 * 
 * Podemos recorrer mapas empleand el método foreach o el bucle
 * for-in.
 */
void main() {
  // create map and show it
  final data = <String, dynamic>{
    'nombre': 'John Wick',
    'age': 48,
    'curso': 'Dart Avanzado',
    'stack': ['Java', 'Python', 'JS', 'Dart'],
    'precio': null,
  };

  // Iteramos cada MapEntry
  for (var me in data.entries) {
    print('${me.key} -> ${me.value}');
  }
}
