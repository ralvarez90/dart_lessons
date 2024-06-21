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
 * 
 * rethrow
 * Se utiliza dentro de un bloque catch para volver
 * a lanzar una excepción que ha sido capturada.
 * 
 * La diferencia entre throw y rethrow es que rethrow vuelve 
 * a lanzar la excepción original preservando su pila de 
 * llamadas original, mientras que throw crea una nueva excepción, 
 * lo que puede hacer que la información de la pila de llamadas 
 * se pierda.
*/
void main() {
  // invocamos función
  parsear();

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
