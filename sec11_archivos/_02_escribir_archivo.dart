import 'dart:io';

/**
 * ESCRIBIR ARCHIVOS
 * 
 * De igual forma la clase File nos permite crear archivos. Además
 * también disponemos de versions síncronas y asíncronas de
 * dichos métodos.
 */
void main() async {
  // ruta de archivos
  const filesFolder = '../extras/';
  const testPath = '${filesFolder}test.txt';

  // instancia file
  final file = File(testPath);

  // agregamos contenido
  int iterations = 10;
  for (int i = 0; i < iterations; i++) {
    await file.writeAsString(
      'Escribiendo en archivo ${i + 1}\n',
      mode: FileMode.append,
    );
  }
}
