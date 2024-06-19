import '../extras/tools.dart';

/**
 * DESESTRUCTURACIÓN DE OBJETOS
 * 
 * Dada una instancia de una clase, empleamos el : para
 * desestructurar campos internos de dichos objetos.
 * 
 * Dada una clase A y una instancia a de dicha clase, desestructuramos
 * campos del objeto de la forma:
 * 
 * var A(:f1, :f2, ..., :fn) = a;
 * donde f1, f2, ..., fn son campos del objeto.
 */
class User {
  final int id = DateTime.now().millisecondsSinceEpoch;
  final String email;
  User({required this.email});
}

// Run application
void main() {
  // creamos instancia
  final user = User(email: 'ra90@gmail.com');

  // desestructuracion
  var User(:id, :email) = user;
  print('user id: $id');
  print('email  : $email');

  // end message
  systemPause();
}
