import 'package:kwic/bean/article.dart';
import 'package:kwic/processor/processor.dart';

// 循环移位处理器
class ShiftProcessor extends Processor {
  @override
  Article process(Article article) {
    for (final sentence in article.sentences) {
      // 将第一个单词放到最后
      final firstWord = sentence.words.removeAt(0);
      sentence.words.add(firstWord);
    }
    return article;
  }
}
