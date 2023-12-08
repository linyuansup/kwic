import 'package:kwic/generated/prisma_client.dart';
import 'package:kwic/bean/word.dart';

extension SequenceUtil on Sequence {
  // 源代码中的 Sequence 是自动生成的，我们不能修改它，但是我们可以通过 extension 来扩展它的功能
  // 转换为一个个单词
  List<Word> toWord() {
    final res = data.split(" ").map((e) => Word(e)).toList();
    for (var item in res) {
      if (item.data == " " || item.data.isEmpty) {
        continue;
      }
      // 判断单词是否合法
      if (!item.isValid()) {
        throw Exception("Unsupported word: ${item.data}");
      }
    }
    return res;
  }
}
