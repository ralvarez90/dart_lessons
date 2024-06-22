/**
 * FUNCIONES ASÍNCRONCAS
 * 
 * Son cualquiera que regresa un Futuro. 
 */
void main() {
  // entry point
  print('1. Inicializando el programa. . .');

  // se retorna un Future<Product>
  getProduct('Seat Ibiza', 25000.0).then(print);

  // end message
  print('3. Finalzando el programa. . .');
}

class Product {
  String name;
  num price;

  Product(this.name, this.price);

  @override
  String toString() {
    return 'Product(name: $name, price: $price)';
  }
}

/// Función Asíncrona
Future<Product> getProduct(String name, num price) {
  return Future.delayed(Duration(seconds: 2), () {
    return Product(name, price);
  });
}
