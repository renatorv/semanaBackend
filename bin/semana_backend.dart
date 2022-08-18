
import 'package:semana_backend/semana_backend.dart';
import 'package:shelf/shelf_io.dart' as io;

void main(List<String> arguments) async {
  final handler = await startShelfModular();

  final server = await io.serve(handler, '0.0.0.0', 4485);

  print('Server on-line: ${server.address.address}:${server.port}');
}

https://www.youtube.com/watch?v=FbOEgTO4ayk&t=2s
Semana do backend #9 - O conector do Postgres