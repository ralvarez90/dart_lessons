import 'dart:io';

/**
 * EJERCICIO
 * 
 * Leer datos de archivo csv. Filtrar y obtener una lista
 * de paises.
 */
void main() async {
  // instancia de file
  final csvFilePath = '../extras/paises.csv';

  // creamos instancia de file
  final csv = File(csvFilePath);
  final filteredFile = File('../extras/filtered.txt');

  // si no existe lo crea
  if (!await filteredFile.exists()) {
    await filteredFile.create();
  }

  // leemos linea a linea
  final lines = await csv.readAsLines();
  lines.removeAt(0);

  // obtenemos paises y filtramos
  final countries = lines.map((e) => Country.fromList(e.split(','))).toList();
  print(countries);
  for (final name in Country.getNames()) {
    await filteredFile.writeAsString('$name\n', mode: FileMode.append);
  }

  // escribirmos
}

class Country {
  static final _instances = <Country>[];

  final String name;
  final String nombre;
  final String iso;

  Country({required this.name, required this.nombre, required this.iso}) {
    _instances.add(this);
  }

  factory Country.fromList(List<String> lst) {
    return Country(name: lst.first, nombre: lst[1], iso: lst.last);
  }

  static List<String> getNames() {
    return _instances.map((e) {
      return e.name;
    }).toList();
  }

  @override
  String toString() {
    return 'Country{name: $name, nombre: $nombre, iso: $iso}';
  }
}
