/**
 * MIXINS
 * 
 * Son pequeñas bibliotecas de métodos que pueden ser otorgadas
 * a las clases. Estos se indican mediante la palabra reservada
 * with que se van a emplear por una determinada clase.
 */
mixin Maths {
  num sum(num x, num y) {
    return x + y;
  }

  num substract(num x, num y) {
    return x - y;
  }

  num abs(num x) {
    return x >= 0 ? x : -x;
  }

  num sizeBeetween(num x, num y) {
    return abs(x - y);
  }

  num product(num x, num y) {
    return x * y;
  }

  num division(num x, num y) {
    if (y == 0) {
      throw Exception('Cannot be divide by zero.');
    }

    return x / y;
  }
}
