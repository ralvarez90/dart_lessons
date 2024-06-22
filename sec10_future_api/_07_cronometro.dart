import '../extras/tools.dart';

/**
 * CRONOMETRO VERSIÓN 1.
 */
void main() async {
  // run application
  int seconds = 0;

  // bucle while, con await en su interior
  while (seconds < 120) {
    await Future.delayed(const Duration(seconds: 1));
    seconds++;
    print(seconds.toTimer());
  }

  // fin del programa
  systemPause();
}
