import 'dart:io';

import '../extras/tools.dart';

/**
 * PROYECTO
 * 
 * Implementa un pequeño programa de consola utilizando la clase
 * Producto y Almacen:
 * 
 * Producto trendrá:
 * - final string id
 * - final string nombre
 * - int cantidad
 * - num precio
 * - restar(int cantidad): void
 * - sumar(int cantidad): void
 * 
 * Almacén tendrá:
 * - final string id
 * - final string name
 * - final List<Producto> productos
 * 
 * ---------------------------------------------------------------
 * Además contaremos con las clases para controlar las operaciones de
 * añadir nuevos productos, añadir y restar cantidades, eliminar,
 * mostrar y filtrar productos del almacen.
 * 
 * Esta clase se llamará Controlador y únicamente tendrá un almacen como
 * atributo. Contará con los métodos necesarios para hacer las acciones
 * indicadas.
 * 
 * El menú tendrá las siguietes opciones.
 */
void main() {
  // instanciamos productos
  final p1 = Producto(
    nombre: 'Macbook Air',
    precio: 10990,
    cantidad: 10,
  );

  final p2 = Producto(
    nombre: 'Macbook Pro',
    precio: 23000,
    cantidad: 11,
  );

  final p3 = Producto(
    nombre: 'Alienware  ',
    precio: 10200,
    cantidad: 12,
  );

  final almacen = Almacen(
    nombre: 'ML',
    productos: [p1, p2, p3],
  );

  final controlador = Controlador(almacen);

  // lectura de teclado
  int entrada = -1;
  do {
    Consola.mostrarMenu();
    entrada = int.tryParse(input('>>> ')) ?? -1;
    print('');
    switch (entrada) {
      case 1:
        controlador.listarProductos();
        break;
      case 2:
        String nombre = input('nombre: ');
        int cantidad = int.tryParse(input('cantidad: ')) ?? 0;
        num precio = num.tryParse(input('precio: ')) ?? 0;
        final p = Producto(nombre: nombre, precio: precio, cantidad: cantidad);
        controlador.agregarProducto(p);
      case 3:
      case 4:
      case 5:
      case 6:
      default:
        entrada = 0;
    }
    print('');
  } while (entrada != 0);

  // mensaje final
  if (entrada == 0) {
    print('\nHasta luego!');
    return;
  }
}

/// Modelo Producto
class Producto {
  static int _contador = 0;
  late final String id;
  final String nombre;
  int cantidad;
  num precio;

  Producto({
    required this.nombre,
    required this.precio,
    this.cantidad = 0,
  }) {
    _contador += 1;
    this.id = '#PRD-$_contador#';
  }

  void sumar(int cantidad) {
    this.cantidad += cantidad;
  }

  bool restar(int qty) {
    if (cantidad < qty) {
      return false;
    }
    return true;
  }

  @override
  String toString() {
    return 'id: $id, nombre: $nombre, cantidad: $cantidad, precio: $precio';
  }
}

/// Modelo Almacen
class Almacen {
  static int _contador = 0;

  late final String id;
  final String nombre;
  final List<Producto> productos;

  Almacen({
    required this.nombre,
    required this.productos,
  }) {
    _contador += 1;
    this.id = '#ALM-$_contador#';
  }

  @override
  String toString() {
    return 'id: $id, nombre: $nombre, productos: $productos';
  }
}

class Controlador {
  final Almacen almacen;
  Controlador(this.almacen);

  void listarProductos() {
    for (var p in this.almacen.productos) {
      print(p);
    }
  }

  void agregarProducto(Producto p) {
    this.almacen.productos.add(p);
  }
}

class Consola {
  static void mostrarMenu() {
    print('=' * 30 + ' PROGRAMA DE ALMACÉN ' + '=' * 30);
    print('1. Listar productos');
    print('2. Añadir producto');
    print('3. Eliminar producto');
    print('4. Buscar producto');
    print('5. Añadir cantidad a producto');
    print('6. Restar cantidad a producto');
    print('0. Salir');
  }

  static String input([String str = '']) {
    stdout.write(str);
    return stdin.readLineSync() ?? '';
  }
}
