import 'package:kwic/url_generator/sql_url_generator.dart';

class MySqlUrlGenerator extends SqlUrlGenerator {
  @override
  String address;

  @override
  String dbName = "mysql";

  @override
  String param;

  @override
  String password;

  @override
  int port;

  @override
  String username;

  MySqlUrlGenerator({
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
