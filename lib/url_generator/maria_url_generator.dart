import 'package:kwic/url_generator/sql_url_generator.dart';

class MariaDBUrlGenerator extends SqlUrlGenerator {
  @override
  String address;

  // MariaDB 与 Mysql 的 url 前缀是一样的
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

  MariaDBUrlGenerator({
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
