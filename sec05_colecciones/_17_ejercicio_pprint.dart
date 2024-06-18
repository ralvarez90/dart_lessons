void main(List<String> args) {
  final data = {
    'name': 'Raul',
    'lastName': 'Albin',
    'country': 'Spain',
    'courseInfo': {
      'name': 'Dart 3: más allá de Flutter',
      'language': 'Dart',
      'extraInfo': {
        'availability': 'Worldwide',
        'idiom': 'Spanish',
        'length': '16 hours',
        'videosNumber': 225
      }
    }
  };
  print(makeMapPrettier(data));
}

String makeMapPrettier(Map<dynamic, dynamic> map, [int level = 1]) {
  final spaces = '  ';
  final lineJump = '\n';
  final comma = ',';
  final separator = ': ';
  final keys = map.keys;
  final green = '\u001b[32m';
  final yellow = '\u001b[33m';
  final reset = '\u001b[0m';
  final magenta = '\u001b[35m';
  final openChar = '$magenta{$lineJump$reset';
  final closeChar = '$lineJump${spaces * (level - 1)}$magenta}$reset';
  String str = openChar;
  for (final key in keys) {
    final value = map[key];
    if (value is Map) {
      str += spaces * level + yellow + key + separator + reset;
      str += makeMapPrettier(value, level + 1);
    } else {
      str += spaces * level +
          yellow +
          key +
          separator +
          reset +
          green +
          value.toString() +
          reset +
          comma +
          lineJump;
    }
  }
  str += closeChar;
  return str;
}
