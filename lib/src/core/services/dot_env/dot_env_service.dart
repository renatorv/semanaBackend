import 'dart:io';

class DotEnvService {
  final Map<String, String> _map = {};

  static DotEnvService instance = DotEnvService._();

  DotEnvService._() {
    _init();
  }

  void _init() {
    final file = File('.env');

    final envText = file.readAsStringSync();

    for (var line in envText.split('\n')) {
      final lineBreak = line.split('=');
      _map[lineBreak[0]] = lineBreak[1];
    }
  }

  // Explicação sobre operator: https://www.youtube.com/watch?v=0CTqZOs3YM4&t=9s => 7 minutos
  String? operator [](String key) {
    return _map[key];
  }
}
