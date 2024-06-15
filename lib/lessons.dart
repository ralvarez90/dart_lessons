/**
 * LESSONS FUNCTIONS
 * 
 * Contiene todas las lecciones del curso sepradors por funciones.
 */

/// PRINT
///
/// Se emplea al función print para imprimir mensajes en la salida
/// standard.
void ls01HelloWorld() {
  print('Hello World in Dart!');
}

/// FUNCIONES
///
/// Son unidades de código reutilizables. Pueden o no
/// regresar valores y pueden o no recibir argumentos.
void ls02Functions() {
  print('LS02. Create owners functions...');
  // Obtiene string en reverse
  String mensaje = 'Hello World';
  print(reverseString(mensaje));

  // Obtenemos sub string
  String hello = "Hello World";
  print(getSubString(hello, 5));
  printSeparator();
}

