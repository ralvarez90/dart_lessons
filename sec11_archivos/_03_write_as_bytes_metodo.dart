import 'dart:io';

import '../extras/tools.dart';

/**
 * MÉTODO WRITEASBYTES
 * 
 * Método de la clase File que permite leer archivos binarios,
 * por ejemplo imágenes, audio, etc.
 */
void main() async {
  // rutas
  const filesFolder = '../extras/';
  const imagePath = '${filesFolder}cat.jpg';
  const imageCopyPath = '${filesFolder}cat_copy.jpg';

  // archivo de imagen y bytes leidos
  final catFile = File(imagePath);
  final bytesCatFile = await catFile.readAsBytes();

  final catCopyFile = File(imageCopyPath);
  await catCopyFile.writeAsBytes(bytesCatFile);

  // end message
  systemPause();
}
