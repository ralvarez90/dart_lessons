/**
 * TIMEOUT
 * 
 * Los futures tiene un método que permite terminar la ejecución
 * de un futuro tras pasar determinado tiempo.
 */
void main() {
  // run application
  const timeout = Duration(milliseconds: 750);
  const wait = Duration(seconds: 1);

  // futuro
  try {
    Future.delayed(wait, () {
      print('Nunca se va a ejecutar...');
    }).then((value) {}).timeout(timeout);
  } catch (_) {}
}
