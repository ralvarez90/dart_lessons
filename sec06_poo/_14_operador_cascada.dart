import '../extras/tools.dart';

/**
 * OPERADOR CASCADA
 * 
 * Permite acceder a métodos/atributos de un objeto y regresar su
 * misma referecia.
 */
class User {
  String name = '';
  String email = '';
  int age = 0;

  void sayHi() {
    print('Hi!');
  }

  @override
  String toString() {
    return 'User{name=$name, email= $email, age=$age}';
  }
}

// Run application
void main() {
  // creamos objeto
  final user = User();

  // acceso a estado en cascada
  user
    ..age = 34
    ..email = 'ralvare90@gmail.com'
    ..name = 'Rodrigo Álvarez'
    ..sayHi();

  // print state
  print(user);

  // end message
  systemPause();
}
