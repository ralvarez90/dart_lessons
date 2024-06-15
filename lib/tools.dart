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
  print('');
  print('-' * length);
}

/// Lanza una excepción ordinaria.
void throwNewException(String errorMsg) {
  throw Exception(errorMsg);
}

/// Retorna string en reversa.
String reverseString(String str) {
  return String.fromCharCodes(str.codeUnits.reversed);
}

/// Obtiene substrings a partir de otro
/// string.
String getSubString(String str, int index) {
  if (index < 0) {
    throwNewException('Invalid index, cannot be < 0');
  }

  String sub = '';
  for (int i = 0; i < index; i++) {
    sub += str[i];
  }
  return sub;
}

/// Obtiene un title version del string que recibe
/// como argumento.
String title(String str) {
  if (str.isEmpty) {
    return '';
  }

  return str[0].toUpperCase() + str.substring(1);
}
