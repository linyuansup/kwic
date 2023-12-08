import 'package:kwic/bean/article.dart';
import 'package:kwic/data_exporter/data_exporter.dart';
import 'package:kwic/generated/prisma_client.dart';
import 'package:kwic/url_generator/url_generator.dart';
import 'package:orm/logger.dart';

class DatabaseDataExporter extends DataExporter {
  final UrlGenerator _urlGenerator;

  DatabaseDataExporter(this._urlGenerator);

  @override
  Future<void> exportData(Article article) {
    try {
      final prisma = PrismaClient(
        stdout: Event.values,
        datasources:
            Datasources(db: _urlGenerator.url), // 从 url_generator 中获取数据库的 url
      );
      prisma.$connect();
      final result = article.sentences;
      for (final sentence in result) {
        prisma.sequence
            .create(data: SequenceCreateInput(data: sentence.toString()));
      }
      prisma.$disconnect();
      return Future.value();
    } catch (e) {
      return Future.error(e);
    }
  }
}
