import '../extras/tools.dart';

/**
 * COMPARACIONES
 * 
 * Las listas son objetos, por lo que si empleamos el operador
 * == estarmemos comparando referecias, es decir direcciones de
 * memoria.
 * 
 * Interfaz Comparable
 * Es una interfaz que obliga a las clases a conformar una serie de
 * propiedades y métodos como si se tratase de un protocolo a
 * seguir.
 * 
 * Por ejemplo los objetos num implementan dicha interfaz. Las listas
 * también.
 * 
 * Las listas no implementan dicha interfaz. Las listas por default
 * solo son iguales a ellas mismas.
 */
void main() {
  // comparcion de enteros
  int a = 1;
  int b = 1;
  print('a == b -> ${a == b}');

  // comparacion entre listas
  List<int> listA = [1, 2, 3];
  List<int> listB = [1, 2, 3];
  List<int> listC = listA;
  print('listA == listB -> ${listA == listB}');
  print('listC == listA -> ${listC == listA}');

  // comparación entre strings
  print('Comparando "Hello" vs "Hello : "');
  print('Hello' == "Hello");

  // end message
  systemPause();
}
