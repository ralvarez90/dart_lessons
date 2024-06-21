import '../extras/tools.dart';

/**
 * RELANZANDO EXCEPCIONES
 * 
 * Podemos incorporar bloques try-catch para manejar
 * excepciones o emplea la palabra reservada throws para
 * relanzar excepciones.
 * 
 * Si dentro de una función o un método tengo un
 * relanzamiento, en el contexto en el que se
 * invoque dicha función se deberá manejar la
 * posible excepción dentro de un try-catch.
 */

// Run application
void main() {
  // end message
  systemPause();
}

/// Retorna un entero. Puede lanzar una excepción.
int parsear() {
  try {
    return int.parse('hello');
  } catch (_) {
    throw Exception('El string no se ha podido parsar');
  }
}
