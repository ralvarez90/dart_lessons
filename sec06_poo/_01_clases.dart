import '../extras/tools.dart';

/**
 * CLASES  
 */
void main() {
  // run examples
  showExample01();

  // end message
  systemPause();
}

/**
 * Los atributos pueden ser nullables, marcados como late
 * o declarando el constructor.
 */
class Product {
  // atributos
  String name;
  num price;

  // constructor
  Product(this.name, this.price);

  @override
  String toString() {
    return '{"name":$name, "price": \$${price.toStringAsFixed(2)}}';
  }
}

void showExample01() {
  // creamos instancoa
  final someP = Product('Macbo', 13450);
  someP.name = 'Macbook Air';
  someP.price = 12990;
  print(someP);
}
