// ignore_for_file: avoid_print

class Logger {
  static Logger? _logger;

  // 单例
  static Logger get instance {
    _logger ??= Logger();
    return _logger!;
  }

  void info(String message) {
    // 带颜色打印
    print("\x1B[32m$message\x1B[0m");
  }

  void error(String message) {
    print("\x1B[31m$message\x1B[0m");
  }

  void warn(String message) {
    print("\x1B[33m$message\x1B[0m");
  }

  void debug(String message) {
    print("\x1B[34m$message\x1B[0m");
  }
}
