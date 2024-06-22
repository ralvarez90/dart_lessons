import 'dart:async';

/**
 * FUTURE
 * 
 * Hemos visto que Dart funciona según un event loop. Este
 * está compuesto de:
 * - cola de microtasks
 * - cola de eventos
 * 
 * Primero se ejecutarán todas las microtask del ciclo, luego el primer
 * elemento de la cola de eventos, así sucesivamente hasta que no
 * queden eventos.
 * 
 * Método then
 * Es propio de los Future, es utilizado para acceder al valor
 * de un Future una vez que este se ha resuelto.
 * 
 * Recordemos que una microtarea se ejecuta antes que un evento
 * dentro de la cola de eventos. El event loop se interrumple 
 * hasta que todas las microtareas estén completadas.
 * 
 * Primero se ejecuta el código síncrono de del hilo principal,
 * luego las microtareas y luego lo del event loop.
 * 
 * Resultado ak ejecutar:
 * 1. Iniciando el programa. . . 
 * 3. Finalizando el programa. . .
 * Primera microtarea...
 * Segunda micritarea...
 * 2. El valor del future es: 10
 */
void main() {
  // mensaje inicial
  print('1. Iniciando el programa. . . ');

  // creamos microtarea
  scheduleMicrotask(() {
    print('Primera microtarea...');
  });

  // creamos microtarea
  scheduleMicrotask(() {
    print('Segunda microtarea...');
  });

  // creamos futuro, y then se ejcuta cuando el
  // future es resuelto,
  Future.value(10).then((value) {
    print('2. El valor del future es: $value');
  });

  // mensaje al final del main
  for (var i = 0; i < 1000000; i++) {
    for (var j = 1; j <= 2; j++) {
      i++;
      i--;
    }
  }

  print('3. Finalizando el programa. . . ');
}
