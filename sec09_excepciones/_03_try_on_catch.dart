import '../extras/tools.dart';

/**
 * MANEJO DE MÚLTIPLES EXCEPCIONES
 * 
 * De forma similar a java o python, podemos manejar
 * divesos tipos de excepciones, se emplea una serie
 * de catch empleando la palabra reservada on seguido
 * del tipo de excepción a manejar.
 * 
 * Finally se pude utilizar al final de un bloque
 * try-catch, este se ejecuyta.
 */
void main() {
  try {
    final result = parse('2', 10);
    print(result);
    // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  } on FormatException catch (e) {
    print(e);
  } catch (e) {
    print(e);
  } finally {
    print('Vuelva pronto!');
  }

  // end message
  systemPause();
}

/// Función que recibe string y entero
int parse(String str, int a) {
  try {
    if (a > 5) {
      throw 'No se puede dividir por un número > 5';
    }
    return (int.parse(str) ~/ a);
  } catch (_) {
    rethrow;
  }
}
