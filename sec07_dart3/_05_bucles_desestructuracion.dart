import '../extras/tools.dart';

/**
 * BUCLE FOR-IN MEJORADO CON PATTERN MATCHIN
 * 
 * Podemos desestructurar campos de un objeto
 * al usar un bucle for.
 */
class User {
  final int id = DateTime.now().millisecond;
  final String email;

  User({required this.email});
}

/// Run application
void main(List<String> args) {
  // lista de usuarios
  final users = [
    User(email: 'e1@gmail.com'),
    User(email: 'e2@gmail.com'),
    User(email: 'e3@gmail.com'),
    User(email: 'e4@gmail.com'),
    User(email: 'e5@gmail.com'),
    User(email: 'e6@gmail.com'),
  ];

  // for in que desestructura
  print('USERS EMAILS:');
  for (var User(:email) in users) {
    print('- $email');
  }

  // end application
  systemPause();
}
