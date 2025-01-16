import 'package:app_marcaqui/components/base_scaffold.dart';
import 'package:app_marcaqui/components/buttonElevated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 350),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo_tatoo2.png",
                      width: 300,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ButtonElevated(
                  label: 'Já tenho uma conta',
                  action: '/loginscreen',
                ),
              ),
              ButtonElevated(
                label: 'Quero me cadastrar',
                action: '/registerscreen',
              ),
            ])),
      ),
    );
  }
}
