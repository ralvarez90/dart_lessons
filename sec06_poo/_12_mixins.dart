import '../extras/tools.dart';

/**
 * MIXINS
 * 
 * Son pequeñas bibliotecas de métodos que pueden ser otorgadas
 * a las clases. Estos se indican mediante la palabra reservada
 * with que se van a emplear por una determinada clase.
 */
mixin Maths {
  num sum(num x, num y) {
    return x + y;
  }

  num substract(num x, num y) {
    return x - y;
  }

  num abs(num x) {
    return x >= 0 ? x : -x;
  }

  num sizeBeetween(num x, num y) {
    return abs(x - y);
  }

  num product(num x, num y) {
    return x * y;
  }

  num division(num x, num y) {
    if (y == 0) {
      throw Exception('Cannot divide by zero.');
    }

    return x / y;
  }
}

/// Clase a extender con mixins
class Computer with Maths {}

class Mobile with Maths {}

class Calculator with Maths {}

/// Run application
void main() {
  // instances
  final computer = Computer();
  final mobile = Mobile();
  final calculator = Calculator();

  // invoke methods
  print(computer.product(5, 10));
  print(mobile.sum(5, 10));
  print(calculator.product(5, 10));

  // end message
  systemPause();
}
