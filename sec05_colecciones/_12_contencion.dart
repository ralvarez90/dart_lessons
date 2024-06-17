import '../extras/tools.dart';

/**
 * CONTENSIÓN
 * 
 * Tenemos disponibles los métodos containsKey y containsValue
 * respectivamente. Retornan booleanos indicando si un
 * determinado key se encuentra en el diccionaro o si un
 * determinado valor se encuentra dentro del diccionario.
 * 
 * Podemos acceder a cada valor dentro de un mapa a través
 * de sus keys. Si se desea acceder al valor de una clave
 * inexistente se retorna un null.
 */
void main() {
  // run lesson
  _showLesson();
  systemPause();
}

// Lesson functon
void _showLesson() {
  // build map
  final someDictMap = <String, dynamic>{
    'nombre': 'Rodrigo',
    'apellido': 'álvarez',
    'edad': 34,
    'tecnologias': [
      'Dart',
      'Python',
      'Postgres',
      'MongoDB',
    ],
    'isValid': true,
    'instance': null,
  };

  // mostramos keys
  print('KEYS...');
  for (String key in someDictMap.keys) {
    print(key);
  }

  print('');

  // mostramos valores
  print('VALUES...');
  for (var value in someDictMap.values) {
    print('$value with runtime type: ${value.runtimeType}');
  }

  // contains
  print('Contiene nombre? -> ${someDictMap.containsKey('nombre')}');
  print('Contiene null  ? -> ${someDictMap.containsValue(null)}');

  // recorremos keys nuevamente
  for (var key in someDictMap.keys) {
    print('someDict[$key] -> ${someDictMap[key]}');
  }
}
