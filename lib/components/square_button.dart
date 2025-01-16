import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class ButtonSquare extends StatelessWidget {
  final double width;
  final double height;
  final String imagem;
  final adjustment;
  final String name;
  final redirect;

  const ButtonSquare({
    required this.height,
    required this.width,
    required this.imagem,
    this.adjustment = BoxFit.cover,
    required this.name,
    this.redirect,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          context.go(redirect);
        },
        child: (Column(children: [
          Container(
              padding: EdgeInsets.all(8),
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromRGBO(217, 217, 217, 1),
                image: DecorationImage(image: AssetImage(imagem)),
              )),
          Text(name)
        ])));
  }
}
