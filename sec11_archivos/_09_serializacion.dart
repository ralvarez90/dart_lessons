import 'dart:convert';
import 'dart:io';

import '../extras/tools.dart';

/**
 * SERIALIZACIÓN, DESERIALIZACI+ON
 * 
 * Consiste en crear objetos json a partir de instancias de clases
 * y viceversa.
 * 
 * Para guardar objetos en listas de archivo tenemos que agregar
 * los métodos:
 * - fromMap
 * - toMap
 * - fromJson
 * - toJson
 * 
 * Para convertir un objeto (suele ser mapa) a un objeto json 
 * empleamos el método jsonEncode. 
 */
void main() async {
  // create instance
  final mx = Country(name: 'México', nombre: 'Mexico', iso: '9000');
  print('mx.toString() -> $mx');
  print('mx.toMap()    -> ${mx.toMap()}');
  print('mx.toJson()   -> ${mx.toJson()}');

  // creamos pais y lo guardamos en archivo
  final file = File('../extras/serializacion.txt');
  await file.writeAsString(mx.toJson());

  // leemos string desde archivo
  String str = await file.readAsString();
  print(Country.fromJson(str));

  // creamos lista de paises
  final countries = [
    mx,
    Country(name: 'Spain', nombre: 'España', iso: '123NTF'),
    Country(name: 'Germany', nombre: 'Alemania', iso: 'HT123D'),
  ];

  // pasamos lista de paises
  await file.writeAsString(jsonEncode(countries));

  // end message
  systemPause();
}

// clase country
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

  factory Country.fromMap(Map<String, dynamic> m) {
    return Country(name: m['name'], nombre: m['nombre'], iso: m['iso']);
  }

  factory Country.fromJson(String str) {
    return Country.fromMap(jsonDecode(str));
  }

  static List<String> getNames() {
    return _instances.map((e) {
      return e.name;
    }).toList();
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'nombre': nombre, 'iso': iso};
  }

  String toJson() {
    return jsonEncode(toMap());
  }

  @override
  String toString() {
    return 'Country{name: $name, nombre: $nombre, iso: $iso}';
  }
}
