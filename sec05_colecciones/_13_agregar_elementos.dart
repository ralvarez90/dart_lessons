import '../extras/tools.dart';

/**
 * AGREGAR ELEMENTOS
 * 
 * Podemos agregar elementos a diccionarios por medio
 * de una llave directa o usando el método addAll que
 * recibe otro mapa.
 * 
 * Por otro lado, addEntries nos permite agregar entradas
 * a un mapa a traves de un interable de map entries.
 */
void main() {
  // run application
  showLesson();
  systemPause();
}

void showLesson() {
  // agregamos elementos por keys
  final someDict = <String, dynamic>{};
  someDict['one'] = 1;
  someDict['two'] = 2;
  print('someDict: ${someDict}');

  // agregamos elementos con addAll
  final other = <String, dynamic>{
    'three': 3,
    'four': 4,
  };

  someDict.addAll(other);
  print("Final otherDict: $other");

  // uso de addEntries
  someDict.addEntries([
    MapEntry('poblacion', 123999),
    MapEntry('co', 15900),
  ]);

  print('Después de addEntries...');
  print(someDict);
}
