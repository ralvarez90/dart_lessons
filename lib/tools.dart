import 'dart:io';
/**
 * Tools
 * 
 * Archivo con funciones de utilizad.
 */

/// Le string por consola. Pude mostrar mensaje.
String input([String message = '']) {
  stdout.write(message);
  final _ = stdin.readLineSync() ?? '';
  return _;
}

/// Show end message and exit program.
void systemPause() {
  input('\nPress any key to continue . . . ');
  exit(0);
}

/// Prints a sinle line separator.
void printSeparator([int length = 50]) {
  print('-' * length);
}

/// Lanza una excepción ordinaria.
void throwException(String errorMsg) {
  throwException(errorMsg);
}