import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kwic/bean/article.dart';
import 'package:kwic/data_exporter/database_data_exporter.dart';
import 'package:kwic/data_exporter/txt_exporter.dart';
import 'package:kwic/data_provider/database_data_provider.dart';
import 'package:kwic/data_provider/string_data_provider.dart';
import 'package:kwic/logger/logger.dart';
import 'package:kwic/pages/default_port.dart';
import 'package:kwic/processor/processor.dart';
import 'package:kwic/processor/shift_processor.dart';
import 'package:kwic/processor/sort_processor.dart';
import 'package:kwic/url_generator/factory.dart';
import 'package:kwic/url_generator/url_generator.dart';
import 'package:kwic/utils/check_util.dart';
import 'package:oktoast/oktoast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@freezed
class PageState with _$PageState {
  const factory PageState({
    required int selectedDataSource,
    required bool sort,
    required String username,
    required String password,
    required String address,
    required String port,
    required String database,
    required String param,
    required String content,
    required String shiftTimes,
    required int defaultPort,
  }) = _PageState;
}

@riverpod
class Page extends _$Page {
  @override
  PageState build() {
    return const PageState(
      selectedDataSource: 0,
      sort: true,
      username: "",
      password: "",
      address: "",
      port: "0",
      database: '',
      param: '',
      content: '',
      shiftTimes: "",
      defaultPort: 26257,
    );
  }

  void selectDataSource(int i) {
    state = state.copyWith(
        selectedDataSource: i, defaultPort: defaultPort.values.elementAt(i));
  }

  void setDefaultPort(int i) {
    state = state.copyWith(defaultPort: i);
  }

  void getData() {
    if (!_canConnect()) {
      return;
    }
    final generator = _generator;
    showToast("Connecting to ${generator.url}", dismissOtherToast: true);
    // 连接获取数据
    DatabaseDataProvider(generator).essay.then((value) {
      showToast("Connect success", dismissOtherToast: true);
      state = state.copyWith(content: value.toString());
    }).onError((error, stackTrace) {
      showToast("Load data failed, $error", dismissOtherToast: true);
      Logger.instance.error(error.toString());
    });
  }

  Future<void> importFromTxt() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null) {
        // 成功打开文件
        File file = File(result.files.single.path!);
        final content = await file.readAsString();
        // 读取其中数据
        StringDataProvider(content).essay.then((value) {
          state = state.copyWith(content: value.toString());
        }).onError((error, stackTrace) {
          showToast("Load data failed, $error", dismissOtherToast: true);
          Logger.instance.error(error.toString());
        });
        showToast("Open file success");
      } else {
        showToast("Open file failed");
      }
    } catch (e) {
      showToast("Open file failed: $e");
    }
  }

  void sort(bool value) {
    state = state.copyWith(sort: value);
  }

  void saveToDatabase() async {
    if (!_canConnect()) {
      return;
    }
    final generator = _generator;
    showToast("Connecting to ${generator.url}", dismissOtherToast: true);
    DatabaseDataExporter(generator)
        .exportData(Article.fromString(state.content))
        .then((value) {
      showToast("Save success", dismissOtherToast: true);
    }).onError((error, stackTrace) {
      showToast("Save data failed, $error", dismissOtherToast: true);
      Logger.instance.error(error.toString());
    });
  }

  // 获取 url 生成器
  UrlGenerator get _generator {
    final generatorBuilder = UrlGeneratorBuilder()
      ..setAddress(state.address)
      ..setDatabase(state.database)
      ..setParam(state.param)
      ..setPassword(state.password)
      ..setPort(int.parse(state.port))
      ..setType(defaultPort.keys.elementAt(state.selectedDataSource))
      ..setUsername(state.username);
    return generatorBuilder.build();
  }

  void doAction() {
    List<Processor> processors = [];
    final moveCount = int.tryParse(state.shiftTimes);
    if (moveCount == null) {
      showToast("Shift times is not valid");
      return;
    }
    final totalData = state.content;
    var article = Article.fromString(totalData);
    // 添加移位处理器
    for (var i = 0; i < moveCount; i++) {
      processors.add(ShiftProcessor());
    }
    // 添加排序处理器
    if (state.sort) {
      processors.add(SortProcessor());
    }
    // 执行
    for (final processor in processors) {
      article = processor.process(article);
    }
    state = state.copyWith(content: article.toString());
  }

  void saveToTxt() async {
    String? outputFile = await FilePicker.platform.saveFile(
      fileName: 'output-file.txt',
    );
    if (outputFile == null) {
      showToast("Save file failed");
      return;
    }
    TxtExporter(outputFile).exportData(Article.fromString(state.content));
    showToast("Save file success");
  }

  void setUsername(String data) {
    state = state.copyWith(username: data);
  }

  void setPassword(String data) {
    state = state.copyWith(password: data);
  }

  void setAddress(String data) {
    state = state.copyWith(address: data);
  }

  void setPort(String data) {
    state = state.copyWith(port: data);
  }

  void setDatabase(String data) {
    state = state.copyWith(database: data);
  }

  void setParam(String data) {
    state = state.copyWith(param: data);
  }

  bool _canConnect() {
    if (!isAddress(state.address)) {
      showToast("Address is not valid");
      return false;
    }
    if (state.username.isEmpty) {
      showToast("Username is empty");
      return false;
    }
    if (state.password.isEmpty) {
      showToast("Password is empty");
      return false;
    }
    if (state.database.isEmpty) {
      showToast("Database is empty");
      return false;
    }
    if (!isPort(state.port)) {
      showToast("Port is not valid");
      return false;
    }
    return true;
  }

  void setContent(String data) {
    state = state.copyWith(content: data);
  }

  void setShiftTime(String data) {
    state = state.copyWith(shiftTimes: data);
  }
}
