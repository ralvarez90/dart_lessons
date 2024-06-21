import '../extras/tools.dart';

/**
 * EXCEPCIONES PROPIAS
 * 
 * Creamos una clase y debemos implementar la interfaz
 * Exeption. Esta es una abstract interface, el equivalente
 * a una interface pura en Java.
 */
class NotAllowedDivision implements Exception {
  // attributes
  final String message;
  final int providerNumber;

  // constructor
  const NotAllowedDivision(this.message, this.providerNumber);

  @override
  String toString() {
    return '{message: $message, providerNumber: $providerNumber}';
  }
}

// Run application
void main() {
  // manejo de excepción
  try {
    final result = parse('3', 6);
    print(result);
    // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException catch (e) {
    print('Ha ocurrido un IntegerDivisionError: $e');
  } on FormatException catch (e) {
    print('FormatException $e');
  } on NotAllowedDivision catch (e) {
    print(e.providerNumber);
    print(e.message);
  } catch (_) {
    print(_);
  } finally {
    print('Vuelva pronto!');
  }

  // end message
  systemPause();
}

/// Retorna un entero resultado de parsear
/// un string.
int parse(String str, int a) {
  try {
    if (a > 5) {
      throw NotAllowedDivision('Can not be divide by number > 5', a);
    }
    return int.parse(str) ~/ a;
  } catch (_) {
    rethrow;
  }
}
