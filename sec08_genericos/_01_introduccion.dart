import '../extras/tools.dart';

/**
 * GENERICOS
 * 
 * Son clases generales que permiten adaptar de forma general
 * clases y métodos de forma que funciones con cualquier tipo
 * de dato.
 * 
 * Los 
 */
void main() {
  // invocamos métodos
  method('Hello World');
  method(123);
  method(12.12);
  method(true);
  method<String>('Hello World in Dart!');
  print('');

  // end message
  systemPause();
}

/// Función que opera con genéricos.
void method<T>([T? obj]) {
  print('El objeto obj es de tipo: ${obj.runtimeType}');
}
