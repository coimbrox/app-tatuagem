import 'package:flutter/material.dart';

import '../consts/spacing_const.dart';

class Input extends StatefulWidget {
  final String label;
  final bool obscureText;

  const Input({
    required this.label,
    this.obscureText = false,
    super.key,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: SpacingConst.baseSpacing),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                labelText: widget.label,
              ),
              obscureText: widget.obscureText,
            ),
          ],
        ));
  }
}
