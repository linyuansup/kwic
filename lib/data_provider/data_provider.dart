import 'package:kwic/bean/article.dart';

// 数据获取类
abstract class DataProvider {
  Future<Article> get essay; // dart 语法糖，其实是函数声明
}