import '../extras/tools.dart';

/**
 * MAPAS
 * 
 * Son equivalentes a los diccionarios en python. Son colecciones
 * en pares clave-valor. Los maps se declararn de la forma
 * Map<T. K> donde T es el tipo de dato de los keys y K es el tipo
 * de dato de los valores.
 */
void main() {
  // creamos diccionario
  Map<String, String> data = {
    'nombre': 'ralvarez90',
    'web': 'udemy',
    'curso': 'learning dart',
  };

  print('Show map instance:');
  print(data);

  // uso de dynamic
  final someDict = <String, dynamic>{
    'nombre': 'RAlvarez90',
    'email': 'ra90@gmail.com',
    'languages': ['dart', 'go', 'python'],
    'localization': {
      'x': 123,
      'y': -231,
    }
  };

  print('Complex map instance:');
  print('someDict type: ${someDict.runtimeType}');
  print('');

  // recorremos keys
  print('Show keys...');
  someDict.keys.forEach(print);
  print('');

  // recorremos valores
  print('Show values...');
  someDict.values.forEach(print);
  print('');

  // recorremos cada entrada
  print('Show entries...');
  someDict.entries.forEach(print);

  // end message
  systemPause();
}
