// ignore: file_names
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonElevated extends StatefulWidget {
  final String label;
  final String action;
  final String? textStyle;
  final String? alignment;
  final String? padding;
  final double? fontSize;

  const ButtonElevated(
      {required this.label,
      required this.action,
      this.textStyle,
      this.alignment,
      this.padding,
      this.fontSize,
      super.key});

  @override
  State<ButtonElevated> createState() => _buttonStateElevated();
}

// ignore: camel_case_types
class _buttonStateElevated extends State<ButtonElevated> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            context.go(widget.action);
          },
          child: Text(widget.label),
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
                fontWeight: FontWeight.bold, fontSize: widget.fontSize),
            alignment: Alignment.center,
          ),
        )
      ],
    );
  }
}
