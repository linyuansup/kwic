import 'package:kwic/bean/article.dart';
import 'package:kwic/bean/sentence.dart';
import 'package:kwic/data_provider/data_provider.dart';
import 'package:kwic/generated/prisma_client.dart';
import 'package:kwic/url_generator/url_generator.dart';
import 'package:kwic/utils/sequence_util.dart';
import 'package:orm/logger.dart';

// 从数据库中获取数据
class DatabaseDataProvider extends DataProvider {
  final UrlGenerator _urlGenerator;

  DatabaseDataProvider(this._urlGenerator);

  @override
  Future<Article> get essay async {
    late final Article res;
    try {
      final prisma = PrismaClient(
        stdout: Event.values,
        datasources:
            Datasources(db: _urlGenerator.url), // 从 url_generator 中获取数据库的 url
      );
      await prisma.$connect();
      final result = await prisma.sequence.findMany();
      await prisma.$disconnect();
      res = Article(result.map((e) => Sentence(e.toWord())).toList());
      if (!res.isValid()) {
        return Future.error("Invalid data");
      }
    } catch (e) {
      return Future.error(e);
    }
    return res;
  }
}
