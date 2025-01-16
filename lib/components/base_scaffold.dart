import 'package:flutter/material.dart';

import '../consts/spacing_const.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;

  const BaseScaffold({
    required this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingConst.baseSpacing * 2,
            vertical: SpacingConst.baseSpacing,
          ),
          child: body,
        ),
      ),
    );
  }
}
