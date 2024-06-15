import 'dart:io';

import 'package:dart_lessons/tools.dart';
/**
 * LESSONS FUNCTIONS
 * 
 * Contiene todas las lecciones del curso sepradors por funciones.
 */

/// PRINT
///
/// Se emplea al función print para imprimir mensajes en la salida
/// standard.
void ls01HelloWorld() {
  print('LS01. Use print function...');
  print('Hello World in Dart!');
  printSeparator();
}

/// FUNCIONES
///
/// Son unidades de código reutilizables. Pueden o no
/// regresar valores y pueden o no recibir argumentos.
void ls02Functions() {
  print('LS02. Create owners functions...');
  // Obtiene string en reverse
  String mensaje = 'Hello World';
  print(reverseString(mensaje));

  // Obtenemos sub string
  String hello = "Hello World";
  print(getSubString(hello, 5));
  printSeparator();
}

/// PARÁMETROS POSICIONALES OBLIGATORIOS
///
/// Los parámetros en métodos y funciones en dart por
/// default son posicionales, es decir son obligatorios
/// y al invocar se colocan en el orden de la
/// definición.
void ls03Parametros() {
  print("LS03. Use parameters in functions...");

  // recibe parámetro
  void saludar(String username) {
    print('Welcome $username!');
  }

  // uso de parámetros posicionales obligatorios
  num getSum(num x, num y) {
    return x + y;
  }

  // lectura de datos
  final x = num.tryParse(input('Ingrese x: '));
  final y = num.tryParse(input('Ingrese y: '));
  if (x == null || y == null) {
    print('Error al leer datos.');
    exit(0);
  }

  // invocaciones
  saludar('RAlvarez90 ');
  print('$x + $y = ${getSum(x, y)}');
  printSeparator();
}

/// PARÁMETROS OPCIONALES
///
/// Son aquellos que reciben un valor default al momento
/// de definir la función. Son posicionales y se colocan
/// posteriormente a los posicionales obligatorios sin
/// valor default. Van entre [].
///
/// Podemos combinar parámetros obligatorios con
/// opcionales, con la condición de que los obligatorios
/// van primero.
void ls04ParametrosOpcionales() {
  print('LS 04. Optional Parameters...');

  // función con parámetro default opcional
  void sayHi([String helloDefaultMsg = 'Hi!']) {
    print(helloDefaultMsg);
  }

  // invocaciones
  sayHi();
  sayHi('Welcome to Dart!');
  printSeparator();
}

/// NAMED PARAMETERS
///
/// Permiten pasar argumentos a una función usando
/// su  nombre como etiquetas en el orden que se
/// desee. Estos pueden ser obligatorios o tener
/// asignado un valor default.
///
/// Si no se establece un valor default a un named
/// parameters, entonces al ser obligatorio se requiere
/// marcar como requerido.
///
/// Los named parameters se establecen entre {}.
void ls05NamedParameters() {
  print(title("lS 05. Named parameters..."));

  // contruye nombre
  String buildFullname({required String fname, required String lname}) {
    return '${title(fname)} ${title(lname)}';
  }

  // create vars
  String firstName = input('Input fname: ');
  String lastName = input('Input lname: ');

  // build full name
  String fullname = buildFullname(lname: lastName, fname: firstName);
  print('Fullname: $fullname');

  printSeparator();
}

/// ARROW FUNCTIONS
/// Se utilizan cuando las funciones se
/// pueden reescribir en una sola línea o