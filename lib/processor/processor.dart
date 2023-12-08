import 'package:kwic/bean/article.dart';

abstract class Processor {
  Article process(Article article);
}