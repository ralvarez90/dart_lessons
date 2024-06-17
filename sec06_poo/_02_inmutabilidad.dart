import '../extras/tools.dart';

/**
 * INMUTABILIDAD
 * 
 * Los atributis final son variables de referencia inmutable. Para establecer
 * que una variable u objeto será inmutable o constante se emplea final o
 * const.
 * 
 * El usar final crear variables de referencia inmutable y de estado mutable
 * mientras que const se contruye en tiempo de compilación.
 * 
 * Las clases pueden tener constructores finales o constantes. Si un 
 * constructor se estalece como const, todas sus propiedades deberan ser
 * constantes (const o final) al declararse dicho constructor.
 * 
 * Si todos los atributos de una clase son inmutables, entonces la clase
 * será constante.
 * 
 * El constructor const establece que todas las instancias de dicha
 * clase serán inmutables. Para que esto pueda hacerse todas las propiedaes
 * tienen que ser constantes en tiempo de ejecución, es decir, final.
 */
void main() {
  // run lessons
  showExample01();
  systemPause();
}

class Product {
  final String name;
  final num price;

  const Product(this.name, this.price);

  @override
  String toString() {
    return '{"name": "${this.name}", "price": ${this.price}}';
  }
}

// Ejemplo de uso de clases con constructor const (propiedades
// final)
void showExample01() {
  final p = Product('Macbook Air', 11990.99);
  print(p);
}
