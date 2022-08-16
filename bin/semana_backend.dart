
import 'package:semana_backend/semana_backend.dart';
import 'package:shelf/shelf_io.dart' as io;

void main(List<String> arguments) async {
  final handler = await startShelfModular();

  final server = await io.serve(handler, '0.0.0.0', 4485);

  print('Server on-line: ${server.address.address}:${server.port}');
}


https://www.youtube.com/watch?v=0CTqZOs3YM4

Semana do backend #7 - Técnica DotEnv(.env)