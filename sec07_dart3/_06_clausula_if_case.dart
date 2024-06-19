/**
 * CLAUSULA IF-CASE
 * 
 * Es básicamente una sentencia if aplicada a los
 * pattern matching. Busca que las desestructuraciones
 * cumplan cierto patrón.
 * 
 * Se puede emplar para validar un json que nos envía un
 * servidor como respuesta haciendo el uso de pattern
 * matching.
 */
void main() {
  // ejemplo lista
  final list = [1, 2];

  // if-case
  if (list case [int x, int y]) {
    print('La lista tiene dos elementos');
    print('- $x');
    print('- $y');
  } else if (list case [int x, int y, int z]) {
    print('La lista tiene 3 elementos');
    print('- $x');
    print('- $y');
    print('- $z');
  } else {
    print('Sin coincidencias en el matcheo');
  }
}
