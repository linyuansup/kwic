// 所有 URL 生成器的抽象类，dart 没有直接的接口支持
abstract class UrlGenerator {

  // 只需实现一个 url 的获取方法 (dart 提供了 getter/setter 语法糖)
  String get url;
}
