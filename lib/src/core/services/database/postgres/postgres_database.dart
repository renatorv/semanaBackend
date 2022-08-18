import 'package:semana_backend/src/core/services/database/remote_database.dart';


class PostgresDatabase implements RemoteDatabase {
  // var connection = PostgreSqlConnection();

  @override
  List<Map<String, Map<String, dynamic>>> query(String queryText,
      {Map<String, String> variable = const {}}) {
    throw UnimplementedError();
  }
}
