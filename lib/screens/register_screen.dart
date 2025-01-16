import 'package:app_marcaqui/components/base_scaffold.dart';
import 'package:app_marcaqui/components/input.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Image.asset(
                "assets/images/logo_tatoo2.png",
                width: 300,
              ),
            )
          ],
        ),
        const Input(
          label: 'Usuário',
        ),
        const Input(
          label: 'E-mail',
        ),
        const Input(
          label: 'Senha',
          obscureText: true,
        ),
        const Input(
          label: 'Confirme sua Senha',
          obscureText: true,
        ),
        ElevatedButton(
          onPressed: () {
            context.go('/mainscreen');
          },
          child: const Text('Cadastrar'),
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
            child: const Text('Já tenho uma conta'),
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 10),
            )),
      ],
    ));
  }
}
