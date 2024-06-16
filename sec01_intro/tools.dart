import 'dart:io';

/**
 * Show a line console separator with default
 * length 50.
 */
void printSeparator([int length = 50]) {
  print('-' * length);
}

/**
 * Read string from console with input str message.
 */
String input([String str = '']) {
  stdout.write(str);
  return stdin.readLineSync() ?? '';
}

/**
 * Get a reverse string copy.
 */
String getReversed(String str) {
  return String.fromCharCodes(str.codeUnits.reversed);
}

/**
 * Shows ends message and waint some input from
 * console.
 */
void systemPause() {
  final _ = input('\nPress any key to continue . . . ');
}
