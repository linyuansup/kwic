import 'package:flutter/material.dart';

class TextBar extends StatefulWidget {
  final String hintText;
  final String defaultText;
  final void Function(String) listener;
  final bool obscureText;
  final int? minLines;
  final int? maxLines;

  const TextBar(
      {super.key,
      this.hintText = "",
      this.defaultText = "",
      required this.listener,
      this.obscureText = false,
      this.maxLines = 1,
      this.minLines});

  @override
  State<TextBar> createState() => _TextBarState();
}

class _TextBarState extends State<TextBar> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      Future(() {
        widget.listener(controller.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    controller.text = widget.defaultText;
    return TextField(
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      obscureText: widget.obscureText,
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.hintText,
      ),
    );
  }
}
