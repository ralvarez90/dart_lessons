/**
 * EXCEPCIONES
 * 
 * En dart únicamaente requerimos bloques try-catch para 
 * manejar excepciones. Los bloques try-catch pueden ir
 * en la función principal, dentro deun método o dentro deuna
 * función.
 */

/// Run application
void main() {
  // ejecutamos try, example 01
  try {
    final result = parse();
    print(result);
  } catch (e) {
    print(e);
  }

  // excepciones dentro deuna función
  otherParse();
}

/**
 * Try parse some integer.
 */
int parse() {
  return int.parse('Hello');
}

/**
 * Función que retorna un entero y ahí mismo
 * se maneja la excepción.
 */
int otherParse() {
  try {
    return int.parse('Hello Word');
  } catch (_) {
    print('Catch dentro del método otherParse $_');
    return 0;
  }
}

/**
 * Bloque try-catch anidado dentro deuna función.
 */
int tryParse() {
  try {
    final result = int.parse('Hello');
    print(result);
    return result;
  } catch (e) {
    print(e);
  }

  return -1;
}
