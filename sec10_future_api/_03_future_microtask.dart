import 'dart:async';

/**
 * FUTURE MICROTASK
 * 
 * No se suele usar la función scheduleMicrotask, la clase
 * Future tiene un named constructor microtask que implementa
 * en su interior el scheduleMicrotask.
 */
void main() {
  // mensaje inicial
  print('1. Iniciando el programa. . . ');

  // microtareas con
  scheduleMicrotask(() {
    print('Primer microtarea...');
  });

  scheduleMicrotask(() {
    print('Segunda microtarea...');
  });

  scheduleMicrotask(() {
    print('Tercer microtarea...');
  });

  // microtask named constructor
  Future.microtask(() {
    return Future.value(500).then(print);
  });

  // Otro future
  Future.value(500).then((value) {
    print('2. El valor del future es: $value');
  });

  // mensaje final
  print('3. Finaliza la ejecución...');
}
