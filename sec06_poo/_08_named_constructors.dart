import '../extras/tools.dart';

/**
 * NAMED CONSTRUCTOR Y FACTORY
 * 
 * Patrón de diseño que constituye de crear objetos 
 * con estado predeterminado a partir de métodos 
 * estáticos que funjen como constructores.
 * 
 * Un named constructor recibe como parámetros lo que
 * recibe el constructor normal.
 * 
 * Si se usa la palabra reservada factory, entonces
 * se genera un constructor factoría. Estos requieren
 * contener un return mientras que los normales y los
 * nombrados no.
 */
class Product {
  final String id;
  final String name;
  final List<String> suppliers;
  num price;
  int quantity;

  // normal constructor
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.suppliers,
    this.quantity = 0,
  });

  // named constructor
  Product.empty({
    this.id = '',
    this.name = '',
    this.price = 0,
    this.suppliers = const [],
    this.quantity = 0,
  });

  // factory constructor
  factory Product.fromMap(Map<String, dynamic> m) {
    return Product(
      id: m['id'],
      name: m['name'],
      price: m['price'],
      suppliers: [],
      quantity: m['quantity'],
    );
  }

  @override
  String toString() {
    return 'Product{name: $name, price: \$${price.toStringAsFixed(2)}, quantity: $quantity}';
  }
}

// Run application
void main() {
  // product 1
  final p1 = Product(
      id: '#123m', name: 'Macbook1', price: 10990, suppliers: ['Walmart']);
  print(p1);

  // Named constructor
  final p2 = Product.empty();
  print(p2);

  // Factory constructor
  final p3 = Product.fromMap({
    'id': '#123M',
    'name': 'Macbook Air',
    'price': 10990.99,
    'suppliers': ['ML', 'Amazon', 'Walmart'],
    'quantity': 100
  });

  print(p3);

  // end message
  systemPause();
}
