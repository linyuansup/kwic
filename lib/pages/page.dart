import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kwic/pages/default_port.dart';
import 'package:kwic/pages/provider.dart';
import 'package:kwic/textbar/textbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        // 在这里添加一个 padding，好看一点
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // 从数据库导入区域
            _selectDatasetArea(),
            // 行间距
            const SizedBox(height: 10),
            // 从文件导入区域
            _importDataArea(),
            const SizedBox(height: 10),
            // 输入处理区域
            Expanded(child: _editorArea()),
            const SizedBox(height: 10),
            // 底部区域
            _bottomArea(),
          ],
        ),
      ),
    );
  }

  Widget _selectDatasetArea() {
    return Row(
      children: [
        const Text("Select database sources: "),
        // 添加一个间隔
        const SizedBox(width: 10),
        // 下拉选择框
        Consumer(
          builder: (context, ref, child) {
            return DropdownButton<int>(
              value: ref.watch(
                  pageProvider.select((value) => value.selectedDataSource)),
              onChanged: (i) {
                if (i != null) {
                  ref.read(pageProvider.notifier).selectDataSource(i);
                }
              },
              items: [
                for (var i = 0; i < defaultPort.length; i++)
                  DropdownMenuItem(
                    value: i,
                    child: Text(defaultPort.keys.elementAt(i)),
                  ),
              ],
            );
          },
        ),
        const SizedBox(width: 10),
        // 用户名输入
        SizedBox(
          width: 200,
          child: Consumer(
            builder: (context, ref, child) {
              return TextBar(
                listener: (data) {
                  ref.read(pageProvider.notifier).setUsername(data);
                },
                hintText: "Username",
              );
            },
          ),
        ),
        const SizedBox(width: 10),
        // 密码输入
        SizedBox(
          width: 200,
          child: Consumer(
            builder: (context, ref, child) {
              return TextBar(
                obscureText: true,
                listener: (data) {
                  ref.read(pageProvider.notifier).setPassword(data);
                },
                hintText: "Password",
              );
            },
          ),
        ),
        const SizedBox(width: 10),
        // 数据库地址输入
        SizedBox(
          width: 130,
          child: Consumer(
            builder: (context, ref, child) {
              return TextBar(
                listener: (data) {
                  ref.read(pageProvider.notifier).setAddress(data);
                },
                defaultText: "localhost",
                hintText: "Address",
              );
            },
          ),
        ),
        const SizedBox(width: 10),
        // 数据库端口输入
        SizedBox(
          width: 70,
          child: Consumer(
            builder: (context, ref, child) {
              return TextBar(
                listener: (data) {
                  ref.read(pageProvider.notifier).setPort(data);
                },
                hintText: "Port",
                defaultText: ref.watch(
                  pageProvider.select((value) => value.defaultPort.toString()),
                ),
              );
            },
          ),
        ),
        const SizedBox(width: 10),
        // 数据库名称输入
        SizedBox(
          width: 130,
          child: Consumer(
            builder: (context, ref, child) {
              return TextBar(
                listener: (data) {
                  ref.read(pageProvider.notifier).setDatabase(data);
                },
                hintText: "Database",
              );
            },
          ),
        ),
        const SizedBox(width: 10),
        // 其他参数
        Expanded(
          child: Consumer(
            builder: (context, ref, child) {
              return TextBar(
                listener: (data) {
                  ref.read(pageProvider.notifier).setParam(data);
                },
                hintText: "Param",
              );
            },
          ),
        ),
        const SizedBox(width: 10),
        // 连接按钮
        Consumer(
          builder: (context, ref, child) {
            return ElevatedButton(
              onPressed: () {
                ref.read(pageProvider.notifier).getData();
              },
              child: const Text("Import from database"),
            );
          },
        ),
      ],
    );
  }

  Widget _importDataArea() {
    return SizedBox(
      height: 30,
      child: Row(
        children: [
          const Text("And also you can"),
          const SizedBox(width: 10),
          // 从 txt 导入
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                return ElevatedButton(
                  onPressed: () {
                    ref.read(pageProvider.notifier).importFromTxt();
                  },
                  child: const Text("Import from txt file"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _editorArea() {
    return Consumer(
      builder: (context, ref, child) {
        return TextBar(
          minLines: 9999,
          maxLines: null, // 将输入框撑到最大
          listener: (data) {
            ref.read(pageProvider.notifier).setContent(data);
          },
          defaultText: ref.watch(
            pageProvider.select((value) => value.content),
          ),
        );
      },
    );
  }

  Widget _bottomArea() {
    return Row(
      children: [
        // 移位次数输入
        SizedBox(
            width: 200,
            child: Consumer(
              builder: (context, ref, child) {
                return TextBar(
                  listener: (data) {
                    ref.read(pageProvider.notifier).setShiftTime(data);
                  },
                  hintText: "Shift time(s)",
                );
              },
            )),
        const SizedBox(width: 10),
        Consumer(
          builder: (context, ref, child) {
            // 是否伴随排序
            return Checkbox(
              value: ref.watch(pageProvider.select((value) => value.sort)),
              onChanged: (value) {
                if (value != null) {
                  ref.read(pageProvider.notifier).sort(value);
                }
              },
            );
          },
        ),
        const Text("Sort after shift"),
        const SizedBox(width: 10),
        // 执行操作按钮
        Consumer(
          builder: (context, ref, child) {
            return ElevatedButton(
              onPressed: () {
                ref.read(pageProvider.notifier).doAction();
              },
              child: const Text("Do action"),
            );
          },
        ),
        // 使用 Spacer 将按钮推到最右边
        const Spacer(),
        // 保存到数据库
        Consumer(
          builder: (context, ref, child) {
            return ElevatedButton(
              onPressed: () {
                ref.read(pageProvider.notifier).saveToDatabase();
              },
              child: const Text("Export to database (Use the link below)"),
            );
          },
        ),
        const SizedBox(width: 10),
        // 保存到文件
        Consumer(
          builder: (context, ref, child) {
            return ElevatedButton(
              onPressed: () {
                ref.read(pageProvider.notifier).saveToTxt();
              },
              child: const Text("Export to txt"),
            );
          },
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
