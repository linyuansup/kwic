import 'package:kwic/bean/article.dart';

// 导出数据到数据库
abstract class DataExporter {
  Future<void> exportData(Article article);
}