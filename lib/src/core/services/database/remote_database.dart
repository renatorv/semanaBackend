abstract class RemoteDatabase {
  List<Map<String, Map<String, dynamic>>> query(
    String queryText, {
    Map<String, String> variable = const {},
  });
}
