import '../extras/tools.dart';

/**
 * OBJETOS
 * 
 * Cada objeto tiene una dirección de memoria única. Podemos
 * tener variables que tengan en su interior la misma referencia
 * almacenada.
 */
class Product {
  // constant attributes
  final String id;
  final String name;
  final List<String> suppliers;

  // mutable attributes
  num price;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.suppliers,
    required this.price,
    this.quantity = 0,
  });

  num getTotalAmount() {
    return quantity * price;
  }

  void showSuppliers() {
    for (var s in this.suppliers) {
      print('- $s');
    }
  }
}

// Run application
void main() {
  // create instance
  final laptop = Product(
      id: '#123-1',
      name: 'Macbook',
      suppliers: [
        'Walmart',
        'Amazon',
        'ML',
      ],
      price: 10999.01);

  final proveedores = laptop.suppliers;
  proveedores.remove('ML');
  proveedores.add('Mercado Libre');
  proveedores.add('Ebay');

  // invoke method
  laptop.showSuppliers();

  // using ==
  print(laptop.suppliers == proveedores);

  // obtenemos copia
  final otrosProveedores = [...laptop.suppliers];
  print(otrosProveedores == laptop.suppliers);

  // end message
  systemPause();
}
