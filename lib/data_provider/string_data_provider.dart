import 'package:kwic/bean/article.dart';
import 'package:kwic/data_provider/data_provider.dart';

// 从字符串中获取数据
class StringDataProvider extends DataProvider {
  final String _data;

  StringDataProvider(this._data);

  // 根据换行符分割字符串，每一行作为一个 Sequence
  @override
  Future<Article> get essay {
    final result = Article.fromString(_data);
    if (!result.isValid()) {
      return Future.error("Invalid data");
    }
    return Future.value(result);
  }
}
