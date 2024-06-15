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
///
/// Se utilizan cuando las funciones se pueden reescribir
/// en una sola línea o expresión.
void ls06ArrowFunctions() {
  print('LS06. Arrow functions');

  // arrow functions
  num getDiff({required x, required y}) => x - y;
  for (int i = 1; i <= 10; i++) {
    print('$i - $i -> ${getDiff(x: i, y: i)}');
  }

  printSeparator();
}

/// HOF
///
/// Una hof es una función que cumple al menos una de las
/// siguientes características:
/// - Recibe otra (otra) función(es) como argumento
/// - Retorna otra función.
///
/// Empleamos el tipo de dato Function para especificar
/// el tipo de dato de una función.
void ls07HOF() {
  print('LS07. High Order Functions...');

  // creamos función a ejecutar
  void countTo([int number = 100000]) {
    for (int i = 0; i <= number; i++) {}
  }

  // uso de hof
  num deltaT = runnerTimeCounterExecution(countTo, times: 10000);
  print('Tiempo de ejecución: ${deltaT.toStringAsPrecision(2)} seconds');

  // uso de hof usando funciones anónimas
  runnerTimeCounterExecution(() => {print('Hello World!')}, times: 10);
  print('');

  // uso de excepciones dentro

  printSeparator();
}

/// MÁS SOBRE HOF
///
/// Una función es un objeto de tipo Function, donde en
/// su firma se le puede especificar el tipo de dato
/// que va a retornar, recibir, etc.
void ls08ParametrosHOF() {
  print('LS08. Parámetros en HOF...');

  // get data
  final x = num.tryParse(input('Número x: '));
  final y = num.tryParse(input('Número y: '));

  if (x == null || y == null) {
    print('Error al leer datos.');
    return;
  }

  // uso de función como parámetro.
  print(operateNums(1, 2, (num x, num y) => x + y));
  print(operateNums(4, 5, (num x, num y) => x - y));

  printSeparator();
}

/// CLOSURES
///
/// Son funciones que accede al estado de su ámbito padre, incluso
/// después de que el ámbito padre se haya ejecutado.
void ls09Closures() {
  // closure
  final Function someClosure = (String name) {
    print('Hello $name');
  };

  someClosure('Rodrigo');
  someClosure();
}
