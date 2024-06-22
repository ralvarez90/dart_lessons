import 'dart:io';

import '../extras/tools.dart';

/**
 * MÉTODOS STAT Y STATSYNC
 * 
 * Permiten obtener ciertos datos sobre archivos.
 */
void main() async {
  // instancia de file
  File file = File('../extras/');
  FileStat stats = await file.stat();

  // show info
  if (stats.type == FileSystemEntityType.directory) {
    print('Es un directorio.');
  }

  // apuntamos a otro archivo
  file = File('../extras/test.txt');
  stats = await file.stat();
  if (stats.type == FileSystemEntityType.file) {
    print('Info archivo:');
    print(stats.size);
    print(stats.accessed);
    print(stats.runtimeType);
  }

  // end message
  systemPause();
}
