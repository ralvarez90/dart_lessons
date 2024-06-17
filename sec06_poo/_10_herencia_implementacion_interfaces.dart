import '../extras/tools.dart';

/**
 * INTERFACES Y HERENCIA
 * 
 * Se emplea implements para especificar que se usará una clase
 * abstracta como interfaz. Una interfaz es un contrato que deberán
 * de cumplir las clases que implementen dicha interfaz, esto sin
 * necesidad de extender la clase.
 */
abstract class Person {
  // attributes
  String id;
  String name;
  int age;

  // constructor
  Person(this.id, this.name, this.age);

  // Muestra mensaje de bienvenida.
  void showWelcomeMessage() {
    print('Welcome!');
  }

  // methids
  @override
  String toString() {
    return 'Person{id: $id, name: $name, age: $age}';
  }
}

class Student extends Person {
  // attributes
  final List<String> subjects = [];
  bool repeater;

  // constructor, super hace referencia al padre.
  Student(super.id, super.name, super.age, {this.repeater = false});

  /**
   * Muetra la lista de materos a cursar.
   */
  void showSubjects() {
    if (this.subjects.isEmpty) {
      print('Sin materias a cursar...');
      return;
    }

    for (String subject in subjects) {
      print('- ${title(subject)}');
    }
  }

  @override
  String toString() {
    return '${super.toString()}, repeater: $repeater, subjects: $subjects';
  }
}

class Director implements Person {
  @override
  int age;

  @override
  String id;

  @override
  String name;

  Director({
    required this.name,
    required this.age,
    required this.id,
  });

  @override
  void showWelcomeMessage() {
    print('Welcome to the new schoolar year');
  }
}

// Run application
void main() {
  // creamos estudiantes
  final s1 = Student('AAHR900310GV2', 'Rodrigo', 34);
  s1.subjects.add('Algebra');
  s1.subjects.add('Analysis');
  s1.subjects.addAll(['Geometry', 'Algorithms', 'IA']);

  // show data
  print(s1);
  s1.showSubjects();

  // creamos instancia de director
  final d1 = Director(name: 'John Wick', age: 45, id: '#Killer');
  d1.showWelcomeMessage();

  // end message
  systemPause();
}
