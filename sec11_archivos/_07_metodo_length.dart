import 'dart:io';

import '../extras/tools.dart';

/**
 * MÉTODO LENGTH
 * 
 * Podemos obtener la longitud en bytes de un archivo con
 * legth o lengthSync.
 */
void main() async {
  // instancia de file
  var file = File('../extras/cat_copy.jpg');
  print(file.lengthSync());
  print(file.mbSync());

  // end message
  systemPause();
}
