import '../extras/tools.dart';

/**
 * CLASES ABSTRACTAS
 * 
 * Son clases que contienen al menos un método abstracto. Estas
 * se implementan con el modificador abstract. No podemos instanciar
 * objetos con las clases abstractas.
 * 
 * Las clases abstractas se pueden heredad o implementar como si
 * fueran interfaces.
 * 
 * Una clase abstracta puede contener métodos concretos o 
 * abstractos.
 * 
 * Se emplea override para sobrescribir métodos dentro de
 * una clase.
 */
abstract class Product {
  // metodo concreto
  void method() {
    print('Soy un método');
  }
}

/**
 * Extiende a Product
 */
class Car extends Product {
  @override
  void method() {
    print('Soy un coche');
  }
}

/**
 * Extiende a Product
 */
class MotorBike extends Product {
  @override
  void method() {
    print('Soy una moto...');
  }
}

// Run application
void main() {
  // creamos lista de productps
  final products = <Product>[
    Car(),
    MotorBike(),
  ];

  // iteramos
  for (Product p in products) {
    p.method();
  }

  // end message
  systemPause();
}
