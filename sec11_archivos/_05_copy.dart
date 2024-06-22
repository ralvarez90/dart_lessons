import 'dart:io';

import '../extras/tools.dart';

/**
 * MÉTODO COPY
 * 
 * Las instancias de File tiene un método copy que nos
 * permite copiar archivos de forma rápida.
 */
void main() async {
  // paths
  const filesFolder = '../extras/';
  const imgPath = '${filesFolder}cat.jpg';
  const imgCopyPath = '${filesFolder}cat_copy.jpg';

  // copiamos archivo
  await File(imgPath).copy(imgCopyPath);

  // end message
  systemPause();
}
