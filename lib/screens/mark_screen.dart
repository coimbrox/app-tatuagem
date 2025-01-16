import 'package:app_marcaqui/components/base_scaffold.dart';
import 'package:app_marcaqui/components/calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class MarkScreen extends StatelessWidget {
  const MarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 65),
                      child: IconButton(
                          onPressed: () {
                            context.go('/mainscreen');
                          },
                          icon: const Icon(Icons.arrow_back_sharp)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.asset(
                          'assets/images/logo_tatoo2.png',
                          width: 150,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Calendar(),
            ])),
      ),
    );
  }
}
