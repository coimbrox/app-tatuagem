import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TextB extends StatefulWidget {
  final String label;
  final String action;
  final double? fontSize;

  const TextB(
      {required this.label, required this.action, this.fontSize, super.key});

  @override
  State<TextB> createState() => _textButtonState();
}

// ignore: camel_case_types
class _textButtonState extends State<TextB> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {
              context.go(widget.action);
            },
            style: TextButton.styleFrom(
              textStyle: TextStyle(fontSize: widget.fontSize),
            ),
            child: Text(widget.label)),
      ],
    );
  }
}
