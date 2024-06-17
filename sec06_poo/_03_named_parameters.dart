import '../extras/tools.dart';

/**
 * NAMED PAREMETERS
 * 
 * Podemos tener constructores con parámetros nombrados.
 */
class Product {
  // constants attributes
  final String id;
  final String name;
  final List<String> suppliers;

  // mutable attributes
  num price;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.suppliers,
    this.quantity = 0,
  });

  num getTotalAmount() {
    return quantity * price;
  }

  void showSuppliers() {
    for (String s in this.suppliers) {
      print('- $s');
    }
  }

  @override
  String toString() {
    return 'Product{name=$name, price: $price}';
  }
}

// Run application
void main() {
  // generamos instancoas
  final someProduct = Product(
    id: '123#',
    name: 'Macbook Air',
    price: 13900,
    suppliers: ['Walmart', 'Amazon', 'ML'],
  );

  // establecer cantidad
  someProduct.quantity = int.tryParse(input('Ingrese cantidad: ')) ?? 0;
  print(someProduct.getTotalAmount().toStringAsFixed(2));

  // show data
  print(someProduct);

  // almacenamos referencia de proveedores.
  final provedores = someProduct.suppliers;
  provedores.add('Ebay');
  provedores.remove('ML');
  provedores.add('Mercado Libre');

  // mostramos proveedores
  someProduct.showSuppliers();

  // end application
  systemPause();
}
