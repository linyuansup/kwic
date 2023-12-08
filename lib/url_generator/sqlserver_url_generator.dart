import 'package:kwic/url_generator/url_generator.dart';

// SQL Server Url 表示与其他数据库不同
class SqlServerGenerator extends UrlGenerator {
  @override
  String get url {
    if (param.isEmpty) {
      return 'sqlserver://$address:$port;database=$database;user=$username;password=$password';
    }
    return 'sqlserver://$address:$port;database=$database;user=$username;password=$password;$param';
  }

  String address;
  String database;
  int port;
  String username;
  String password;
  String param;

  SqlServerGenerator({
    required this.address,
    required this.port,
    required this.database,
    required this.username,
    required this.password,
    required this.param,
  });
}
