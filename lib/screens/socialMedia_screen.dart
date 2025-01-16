import 'package:app_marcaqui/components/base_scaffold.dart';
import 'package:app_marcaqui/components/clickableImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SocialMediaScreen extends StatelessWidget {
  const SocialMediaScreen({super.key});

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
                      child: Image.asset(
                        'assets/images/logo_tatoo2.png',
                        width: 150,
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClickableImage(
                      width: 150,
                      imagem: 'assets/images/instagram_logo.png',
                      redirect: 'www.instagram.com',
                    ),
                    ClickableImage(
                      width: 150,
                      imagem: 'assets/images/facebook_logo.png',
                      redirect: 'www.facebook.com',
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClickableImage(
                      width: 150,
                      imagem: 'assets/images/x_logo.png',
                      redirect: 'www.twitter.com',
                    ),
                    ClickableImage(
                      width: 150,
                      imagem: 'assets/images/pinterest_logo.png',
                      redirect: 'br.pinterest.com',
                    ),
                  ],
                ),
              ),
            ])),
      ),
    );
  }
}
