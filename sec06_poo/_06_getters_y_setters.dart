import '../extras/tools.dart';

/**
 * GETTERS, SETTERS
 * 
 * Los atributos y métodos pueden ser privados. Para hacer
 * cualquier elemento privado se emplea el guión bajo.
 * 
 * Los elementos con _ solo se puedne acceder desde el mismo
 * script en el que se define. Estos deben tener getters y/o 
 * setters.
 */
class Product {
  // const attributes
  final String id;
  final String name;
  final List<String> suppliers;

  // attributes
  num price;

  // private attributes
  int _quantity = 0;

  // forma corta: int get quantity => _quantity;
  int get quantity {
    return this._quantity;
  }

  set quantity(int qty) {
    this._quantity = qty;
  }

  // constructor
  Product({
    required this.id,
    required this.name,
    required this.suppliers,
    required this.price,
  });

  @override
  String toString() => 'Product{id: $id, name=$name, suppliers: $suppliers}';
}

// Run application
void main() {
  // create instance
  final someProduct = Product(
    id: '#123-A',
    name: 'Macbook Air',
    suppliers: ['Amazon', 'Ebay', 'Walmart', 'ML'],
    price: 11990.90,
  );

  // acceso a propiedaes
  print('Product quantity: ${someProduct.quantity}');
  someProduct.quantity = 100;
  print('someProduct.quantity: ${someProduct.quantity}');
  print(someProduct);

  // end message
  systemPause();
}
