import '../extras/tools.dart';

/**
 * ASYNC AWAIT
 * 
 * Nos permite esperar a que un Future se complete. El programa 
 * esparará a que los futuros se complenten para continuar
 * con la ejecución en el hilo principal.
 * 
 * Esto solo agrega azúcar sintáctica. Para usar un
 * async await dentro de un método o función, esta se
 * debe de marcar como asíncrona.
 */
void main() async {
  // run application
  final numbers = <num>[];

  final value1 = await Future.value(1);
  numbers.add(value1);

  final value2 = await Future.delayed(Duration(seconds: 2), () {
    return 5;
  });
  numbers.add(value2);

  final value3 = await Future.value(3);
  numbers.add(value3);

  // agregamos resultado de microtask
  final value4 = await Future.microtask(() {
    return 1;
  });
  numbers.add(value4);

  // final results
  print('Suma de elementos: ${getSum(numbers)}');
  systemPause();
}

num getSum(List<num> numbers) {
  num count = 0;
  for (final n in numbers) {
    count += n;
  }
  return count;
}
