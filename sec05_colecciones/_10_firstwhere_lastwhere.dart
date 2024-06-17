import '../extras/tools.dart';

/**
 * FIRSTWHERE Y LASTWHERE
 * 
 * Permite encontra el primer y último elemento respectivamente
 * que cumpla con determinada condición. 
 * 
 * Ambos métodos reciben un callback. Si no encuentra dicho elemento
 * se lanza una excepción en tiempo de ejecución. Esto se puede manejar
 * con un bloque try-catch o usando un segundo callback
 * */
void main() {
  // lista de enteros
  final numbers = [1, 2, 1, 3, 4, 2, 1];

  // primer par, manejo con try-catch
  try {
    final primerPar = numbers.firstWhere((x) => x % 2 == 0);
    print('Primer par: $primerPar');
  } catch (err) {
    print('Sin par encontrado');
  }

  // primer impar, uso con callback
  final primerImpar = numbers.firstWhere((x) => x % 2 != 0, orElse: () => -1);
  if (primerImpar == -1) {
    print('Sin impares encontrados');
    systemPause();
    return;
  }

  print('Primer impar: $primerImpar');

  // end message
  systemPause();
}
