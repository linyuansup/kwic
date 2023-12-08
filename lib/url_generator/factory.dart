import 'package:kwic/url_generator/cockroach_url_generator.dart';
import 'package:kwic/url_generator/maria_url_generator.dart';
import 'package:kwic/url_generator/mongodb_url_generator.dart';
import 'package:kwic/url_generator/mysql_url_generator.dart';
import 'package:kwic/url_generator/postgresql_url_generator.dart';
import 'package:kwic/url_generator/sqlserver_url_generator.dart';
import 'package:kwic/url_generator/url_generator.dart';

class UrlGeneratorBuilder {
  late String type;
  late String username;
  late String password;
  late String address;
  late int port;
  late String database;
  late String param;
  late String path;

  void setPath(String path) {
    this.path = path;
  }

  void setType(String type) {
    this.type = type;
  }

  void setUsername(String username) {
    this.username = username;
  }

  void setPassword(String password) {
    this.password = password;
  }

  void setAddress(String address) {
    this.address = address;
  }

  void setPort(int port) {
    this.port = port;
  }

  void setDatabase(String database) {
    this.database = database;
  }

  void setParam(String param) {
    this.param = param;
  }

  UrlGenerator build() {
    switch (type) {
      case 'MySQL':
        return MySqlUrlGenerator(
          username: username,
          password: password,
          address: address,
          port: port,
          database: database,
          param: param,
        );
      case 'CockroachDB':
        return CockroachUrlGenerator(
          username: username,
          password: password,
          address: address,
          port: port,
          database: database,
          param: param,
        );
      case 'MariaDB':
        return MariaDBUrlGenerator(
          username: username,
          password: password,
          address: address,
          port: port,
          database: database,
          param: param,
        );
      case 'MongoDB':
        return MongodbUrlGenerator(
          username: username,
          password: password,
          address: address,
          port: port,
          database: database,
          param: param,
        );
      case 'PostgreSQL':
        return PostgresqlUrlGenerator(
          username: username,
          password: password,
          address: address,
          port: port,
          database: database,
          param: param,
        );
      case 'SQL Server':
        return SqlServerGenerator(
          username: username,
          password: password,
          address: address,
          port: port,
          database: database,
          param: param,
        );
      default:
        throw Exception('Unknown type: $type');
    }
  }
}
