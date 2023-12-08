import 'package:kwic/url_generator/url_generator.dart';

// Sql 数据库的 url 生成器，Sql 数据库的 url 生成器需要用户名、密码、端口号等信息
abstract class SqlUrlGenerator extends UrlGenerator {
  abstract String dbName;
  abstract String username;
  abstract String password;
  abstract String address;
  abstract int port;
  abstract String param;
  abstract String database;

  @override
  String get url {
    if (param.isEmpty) {
      return '$dbName://$username:$password@$address:$port/$database';
    }
    return '$dbName://$username:$password@$address:$port/$database?$param';
  }
}
