import 'package:kwic/bean/validator.dart';

class Word extends Validator {
  final String data;

  Word(this.data);

  @override
  bool isValid() {
    // 忽略 unicode 换行
    if (data.isEmpty || data == " " || data.codeUnitAt(0) == 13) {
      return true;
    }
    // 判断是否仅由字母组成
    return RegExp(r'^[a-zA-Z]+$').hasMatch(data);
  }

  @override
  String toString() {
    return data;
  }
}
