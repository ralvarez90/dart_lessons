/**
 * FUTURE DELAY
 * 
 * Existe otro constructor llamado delay, que permite ejecutar
 * código tras un espacio de tiempo.
 * 
 * Notas:
 * - Un FutureOr es un objeto que es un Future o un dato 
 * concreto.
 */
void main() {
  // mensaje inicial
  print('1. Init program...');

  // Invoca el callback lueglo de duracion
  Future.delayed(const Duration(seconds: 5), () {
    return 1;
  }).then(print);

  // otro futire
  Future.delayed(const Duration(seconds: 3)).then((_) {
    print('Este print se ejecuta tras 3 segundos...');
  });

  print('3. Vuelva pronto');
}
