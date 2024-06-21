enum Color {
  empty(''),
  red('\u001B[31m'),
  cyan('\u001B[36m'),
  yellow('\u001B[33m');

  final String code;
  const Color(this.code);
}

class PrintAttribute<T> {
  final T property;

  // constructor privado
  PrintAttribute._(this.property);

  static PrintAttribute<T> getProperty<T>(T property) {
    return PrintAttribute._(property);
  }
}

class PrintStyle {
  final PrintAttribute<Color>? color;
  final PrintAttribute<int>? separation;

  PrintStyle({this.color, this.separation});
}

/// Run application
void main(List<String> args) {}
