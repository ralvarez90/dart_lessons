import 'dart:math';

import '../extras/tools.dart';

/**
 * MIEMBROS ESTÁTICOS
 * 
 * Son métodos y propiedades que pertenecen a las clases
 * y no a los objetos. Se emplea la palabra reservada static
 * prácticamente igual que en Java.
 */
class A {
  static int number = 1;
  static void printNumber() => print(number);
}

class Power {
  // atributo estático privado
  static int _exponent = 2;

  // static getter
  static int get exponent => _exponent;

  // static method
  static num power(int number) => pow(number, exponent);

  static void set exponent(int newValue) {
    if (newValue > 0) {
      _exponent = newValue;
      return;
    }

    _exponent = 2;
  }
}

// Entry point
void main(List<String> args) {
  // accedemos a miembros estáticos
  print('A.number: ${A.number}');
  A.printNumber();
  printSeparator();

  // Ingresamos entero
  int x = int.tryParse(input('Ingrese número: ')) ?? -1;
  if (x == -1) {
    print('Error al leer datos.');
    return;
  }

  // invocación de mpetodos estáticos
  final resultado = Power.power(x);
  print('$x ** 2 -> ${resultado}');

  // cambio de exponente
  Power.exponent = 3;
  print('$x ** 3 -> ${Power.power(3)}');

  // end message
  systemPause();
}
