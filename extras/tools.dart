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

extension Str on String {
  /// Get a title version on string str.
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
}

extension TimerExtension on int {
  String toTimer() {
    int hours = this ~/ 3600;
    String hoursString = hours < 10 ? '0$hours' : '$hours';

    int remainingSeconds = this % 3600;
    int minutes = remainingSeconds ~/ 60;

    String minutesString = minutes < 10 ? '0$minutes' : '$minutes';
    remainingSeconds = remainingSeconds % 60;
    String secondsString =
        remainingSeconds < 10 ? '0$remainingSeconds' : '$remainingSeconds';

    return '$hoursString:$minutesString:$secondsString';
  }
}

extension FileSize on File {
  static const int ratio = 1024;

  Future<num> kb() async {
    return (await length()) / ratio;
  }

  num kbSync() {
    return lengthSync() / ratio;
  }

  Future<num> mb() async {
    return (await kb()) / ratio;
  }

  num mbSync() {
    return kbSync() / ratio;
  }

  Future<num> gb() async {
    return (await mb()) / ratio;
  }

  num gbSync() {
    return mbSync() / ratio;
  }
}

enum Color {
  empty(''),
  cyan('\u001B[36m'),
  yellow('\u001B[33m'),
  red('\u001B[31m');

  final String code;
  const Color(this.code);
}
