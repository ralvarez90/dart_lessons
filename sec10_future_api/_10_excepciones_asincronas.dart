/**
 * MANEJO DE EXCEPCIONES
 * 
 * Podemos manejar excepciones de diversas maneras. Los Future puedne
 * manejarse con el mismo then, ya que se puede recibir un callback
 * onError que se ejecuta si llega a haber una excepción.
 * 
 * onError es un callback que recibe un argumento error. El método
 * catchError se invoca el callback que recibe cuando ocurre una
 * exepción.
 */
void main() {
  // run application
  Future.delayed(Duration(seconds: 1), () {
    print('Voy a ejecutarme. . . ');
  }).timeout(Duration(milliseconds: 750)).then((value) {}, onError: (err) {
    print('onError: $err');
  });

  // TODO: MANEJO DE EXCEPCIONES CON CATCH, ERROR
}
