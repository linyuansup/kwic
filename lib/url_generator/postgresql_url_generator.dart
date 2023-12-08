import 'package:kwic/url_generator/sql_url_generator.dart';

class PostgresqlUrlGenerator extends SqlUrlGenerator {
  @override
  String address;

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

  @override
  String database;

  PostgresqlUrlGenerator({
    required this.address,
    required this.username,
    required this.password,
    required this.port,
    required this.database,
    required this.param,
  });
}
