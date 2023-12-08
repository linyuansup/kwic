import 'dart:io';

import 'package:kwic/bean/article.dart';
import 'package:kwic/data_exporter/data_exporter.dart';

class TxtExporter extends DataExporter {
  final String path;

  TxtExporter(this.path);

  @override
  Future<void> exportData(Article article) async {
    await File(path).writeAsString(article.toString());
  }
}
