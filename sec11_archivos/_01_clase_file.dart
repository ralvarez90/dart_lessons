import 'dart:io';
import '../extras/tools.dart';

/**
 * CLASE FILE
 * 
 * Nos permite leer o crear archivos. Disponemos de métodos
 * síncronos y asíncronos. Leemos el contenido de archivos
 * creando un objeto File y accediendo a sus métodos
 * - readAsBytes
 * - readAsString
 * - readAsLines
 * 
 * Entre otros.
 */
void main() async {
  // creamos instancia
  final file = File('../extras/prueba.txt');

  // verificamos existencia de archivo
  if (!file.existsSync()) {
    print('No existe el archivo.');
    return;
  }

  // leemos contenido
  dynamic content = await file.readAsBytes();
  print(String.fromCharCodes(content));
  printSeparator();

  // leemos linea por linea
  content = await file.readAsLines();
  for (final l in content) {
    print(l);
  }

  // end message
  systemPause();
}
