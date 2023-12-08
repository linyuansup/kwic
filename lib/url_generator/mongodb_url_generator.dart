import 'package:kwic/url_generator/sql_url_generator.dart';

// Mongodb 的 url 生成器
// 虽然 Mongodb 是 nosql 数据库，但是其 url 生成方式与其他 nosql 数据库不同，反倒和 sql 数据库相同
class MongodbUrlGenerator extends SqlUrlGenerator {
  @override
  String address;

  @override
  String dbName = "mongodb";

  @override
  String param;

  @override
  String password;

  @override
  int port;

  @override
  String username;

  MongodbUrlGenerator({
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
