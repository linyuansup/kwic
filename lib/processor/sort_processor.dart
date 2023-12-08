import 'package:kwic/bean/article.dart';
import 'package:kwic/processor/processor.dart';

// 排序处理器
class SortProcessor extends Processor {
  @override
  Article process(Article article) {
    // 根据每个句子的首字母排序，首字母相同则根据第二个字母排序，以此类推
    article.sentences.sort((a, b) {
      for (var i = 0; i < a.words.length; i++) {
        // 如果 b 的长度小于 a，则 b 应该排在 a 前面
        if (i >= b.words.length) {
          return 1;
        }
        // 忽略大小写比较
        final result = a.words[i].data
            .toLowerCase()
            .compareTo(b.words[i].data.toLowerCase());
        if (result != 0) {
          return result;
        }
      }
      return 0;
    });
    return article;
  }
}
