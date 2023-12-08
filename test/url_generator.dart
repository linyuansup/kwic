import 'package:kwic/url_generator/cockroach_url_generator.dart';
import 'package:kwic/url_generator/mongodb_url_generator.dart';
import 'package:kwic/url_generator/mysql_url_generator.dart';
import 'package:kwic/url_generator/postgresql_url_generator.dart';
import 'package:test/test.dart';

void main() {
  // Cockroach 与 Postgresql 的 url 前缀是一样的
  test('test cockroach url generator', () {
    var urlGen = CockroachUrlGenerator(
        address: "localhost",
        username: "user",
        password: "pwd",
        port: 26257,
        database: "test",
        param: "sslmode=disable");
    expect(urlGen.url,
        'postgresql://user:pwd@localhost:26257/test?sslmode=disable');
  });

  test('test mongodb', () {
    var urlGen = MongodbUrlGenerator(
        address: "localhost",
        username: "user",
        password: "pwd",
        port: 27017,
        database: "test",
        param: "");
    expect(urlGen.url, 'mongodb://user:pwd@localhost:27017/test');
  });

  test('test mysql', () {
    var urlGen = MySqlUrlGenerator(
        address: "localhost",
        username: "user",
        password: "pwd",
        port: 3306,
        database: "test",
        param: "");
    expect(urlGen.url, 'mysql://user:pwd@localhost:3306/test');
  });

  test('test postgresql', () {
    var urlGen = PostgresqlUrlGenerator(
        address: "localhost",
        username: "user",
        password: "pwd",
        port: 5432,
        database: "test",
        param: "");
    expect(urlGen.url, 'postgresql://user:pwd@localhost:5432/test');
  });
}
