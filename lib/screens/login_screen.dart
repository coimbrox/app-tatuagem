import 'package:app_marcaqui/components/base_scaffold.dart';
import 'package:app_marcaqui/components/buttonElevated.dart';
import 'package:app_marcaqui/components/input.dart';
import 'package:app_marcaqui/components/textB.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 200),
                  child: Image.asset(
                    "assets/images/logo_tatoo2.png",
                    width: 300,
                  ),
                ),
              ],
            ),
            const Input(
              label: "Usuário",
            ),
            const Input(
              label: "Senha",
              obscureText: true,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonElevated(
                  label: "Entrar",
                  action: '/mainscreen',
                  fontSize: 20,
                ),
                TextB(
                  label: 'Esqueci minha senha',
                  action: '/recoverscreen',
                  fontSize: 15,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
