import '../extras/tools.dart';

/**
 * DESESTRUCTURACIÓN
 * 
 * Podemos de igual forma desestructurad datos de un
 * mapa. De forma similar en que los records requieren los
 * () para realizar desestructuración y las listas [], se 
 * requieren {} para desestructurar mapas.
 * 
 * Notas:
 * - Emplamos as para realizar casteo entre tipos.
 */
void main() {
  //
  final someMap = <String, dynamic>{
    'nombre': 'Rodrigo',
    'pais': 'México',
    'comunidad': 'CDMX',
    'idiomas': ['Español', 'Ingles'],
  };

  // desestructuración de mapas
  var {
    'nombre': nombre as String,
    'pais': pais as String,
    'idiomas': [idioma1, idioma2] as List<String>,
  } = someMap;

  print('nombre: $nombre');
  print('pais: $pais');
  print('idioma1: $idioma1');
  print('idioma2: $idioma2');

  // end application
  systemPause();
}
