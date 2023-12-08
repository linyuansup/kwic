import 'package:kwic/bean/sentence.dart';
import 'package:kwic/bean/validator.dart';
import 'package:kwic/bean/word.dart';

class Article extends Validator {
  late List<Sentence> sentences;

  Article(this.sentences);

  Article.fromString(String data) {
    sentences = data
        .split("\n")
        .map((e) => Sentence(e.split(" ").map((e) => Word(e)).toList()))
        .toList();
  }

  @override
  bool isValid() {
    // 遍历所有元素，判断是否正确
    return sentences.every((element) => element.isValid());
  }

  // 将文章转换为字符串
  @override
  String toString() {
    final buffer = StringBuffer();
    for (final sentence in sentences) {
      buffer.write(sentence.toString());
      // 除了最后一个句子，其他句子后面都加一个换行符
      if (sentences.last != sentence) {
        buffer.write("\n");
      }
    }
    return buffer.toString();
  }
}
