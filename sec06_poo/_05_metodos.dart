import '../extras/tools.dart';

/**
 * MÉTODOS
 * 
 * Son funciones asociadas a las intancias de una clase. Estas
 * proveen de comportamiento común a dichos objetos.
 */
class Product {
  // attributes
  final String id;
  final String name;
  final List<String> suppliers;
  num price;
  int quantity;

  // constructor
  Product({
    required this.id,
    required this.name,
    required this.suppliers,
    required this.price,
    this.quantity = 0,
  });

  /**
   * Verifica la existencia de un producto.
   */
  bool existProduct() => this.quantity > 0;

  /**
   * Agrega una cantidad de productos disponibles.
   */
  void add(int qty) => this.quantity += qty;

  /**
   * Resta una cantidad de productos disponibles.
   */
  void substract(int qty) {
    if (qty > this.quantity) {
      print('No cuenta con productos disponibles');
      return;
    }
    this.quantity -= qty;
  }

  /**
   * Muestra los probeedores del producto.
   */
  void showSuppliers() {
    if (suppliers.isEmpty) {
      print('Sin proveedores disponibles');
      return;
    }

    for (String s in suppliers) {
      print('- $s');
    }
  }

  @override
  String toString() {
    StringBuffer sb = StringBuffer('{');
    sb
      ..write('"id": "${id}", ')
      ..write('"name": $name, ')
      ..write('"supliers": $suppliers, ')
      ..write('"price": $price, ')
      ..write('"quantity": $quantity')
      ..write('}');

    return sb.toString();
  }
}

// Run application
void main() {
  // create product
  final macbook = Product(
    id: '#mb-101',
    name: "Macbook Air",
    suppliers: ['Walmart', 'Amazon', 'Apple Store', 'ML'],
    price: 11990.01,
  );

  macbook
    ..add(120)
    ..substract(20);

  // show data and suppliers
  print(macbook);
  macbook.showSuppliers();

  // end application
  systemPause();
}
