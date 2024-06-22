import '../extras/tools.dart';

/**
 * FUTURE DOWHILE
 * 
 * Future.doWhile se encarga de crear un bucle asíncrono. Mientras
 * que dentro del callback se devuelva un true el bucle se seguirá
 * ejecutando. El calback puede devolver un booleano o un Future<bool>.
 * 
 * 
 */
void main() async {
  // run application
  int seconds = 0;
  Future.doWhile(() {
    final stop = Future.delayed(Duration(seconds: 1), () {
      seconds++;
      print(seconds.toTimer());
      return seconds < 120;
    });

    return stop;
  });
}
