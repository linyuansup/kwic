import 'package:kwic/url_generator/sql_url_generator.dart';

class CockroachUrlGenerator extends SqlUrlGenerator {
  @override
  String address;

  // Cockroach 与 Postgresql 的 url 前缀是一样的
  @override
  String dbName = "postgresql";

  @override
  String param;

  @override
  String password;

  @override
  int port;

  @override
  String username;

  CockroachUrlGenerator({
    required this.address,
    required this.username,
    required this.password,
    required this.port,
    required this.database,
    required this.param,
  });

  @override
  String database;
}
