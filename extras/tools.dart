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

/**
 * Get net number + 1
 */
int getNext(int n) {
  return n + 1;
}

/**
 * Retorna el índice del primer múltiplo indicado. Retorna -1
 * si no hay coincidencia.
 */
int getFirstIndexMultiple(List<int> numbers, int m) {
  return numbers.indexWhere((n) {
    return n % m == 0 && n != 0;
  });
}

void pprint(Map m) {
  // todo: hacer un pprint en forma recursiva con mapas.
}

/**
 * Get a title version of string str.
 */
String title(String str) {
  if (str.isEmpty) {
    return '';
  }

  final capitalizedWords = (str.trim().split(' ')).map((word) {
    if (word.isEmpty) {
      return '';
    }

    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  });

  return capitalizedWords.join(' ');
}
