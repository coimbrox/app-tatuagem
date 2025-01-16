import 'package:app_marcaqui/components/artCreate.dart';
import 'package:app_marcaqui/components/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ArtsScreen extends StatelessWidget {
  const ArtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
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
                    Image.asset(
                      'assets/images/logo_tatoo2.png',
                      width: 150,
                    )
                  ],
                ),
              ),
              const ArtCreate(
                image: 'assets/images/botao1.png',
                name: 'Tatuagem1',
                description:
                    'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                price: 'R\$ 500,00',
              ),
              const ArtCreate(
                image: 'assets/images/botao1.png',
                name: 'Tatuagem1',
                description:
                    'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                price: 'R\$ 500,00',
              ),
              const ArtCreate(
                image: 'assets/images/botao1.png',
                name: 'Tatuagem1',
                description:
                    'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                price: 'R\$ 500,00',
              ),
              const ArtCreate(
                image: 'assets/images/botao1.png',
                name: 'Tatuagem1',
                description:
                    'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                price: 'R\$ 500,00',
              ),
              const ArtCreate(
                image: 'assets/images/botao1.png',
                name: 'Tatuagem1',
                description:
                    'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                price: 'R\$ 500,00',
              ),
              const ArtCreate(
                image: 'assets/images/botao1.png',
                name: 'Tatuagem1',
                description:
                    'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                price: 'R\$ 500,00',
              ),
            ])),
      ),
    );
  }
}
