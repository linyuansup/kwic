import 'package:kwic/bean/validator.dart';
import 'package:kwic/bean/word.dart';

class Sentence extends Validator {
  List<Word> words;

  Sentence(this.words);

  @override
  bool isValid() {
    // 遍历所有元素，判断是否正确
    return words.every((element) => element.isValid());
  }

  // 将句子转换为字符串
  @override
  String toString() {
    final buffer = StringBuffer();
    for (final word in words) {
      if (word.data.isEmpty || word.data == " ") {
        continue;
      }
      buffer.write(word.toString());
      // 除了最后一个单词，其他单词后面都加一个空格
      if (words.last != word) {
        buffer.write(" ");
      }
    }
    return buffer.toString();
  }
}
