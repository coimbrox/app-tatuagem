import 'package:app_marcaqui/components/base_scaffold.dart';
import 'package:app_marcaqui/components/input.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecoverScreen extends StatelessWidget {
  const RecoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Image.asset(
                'assets/images/logo_tatoo2.png',
                width: 300,
              ),
            )
          ],
        ),
        const Input(
          label: 'E-mail',
        ),
        ElevatedButton(
          onPressed: () {
            context.go('/');
          },
          child: const Text('Recuperar'),
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(),
          ),
        ),
        TextButton(
            onPressed: () {
              context.go('/loginscreen');
            },
            child: const Text('Lembrei minha senha'),
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 10),
            )),
      ],
    ));
  }
}
