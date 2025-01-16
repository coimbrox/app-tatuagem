import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ArtCreate extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String image;

  const ArtCreate(
      {required this.name,
      required this.description,
      required this.price,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        height: 180,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Color.fromARGB(217, 109, 109, 106),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(
                image,
                width: 100,
              ),
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 12),
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                width: 180,
                child: Text(
                  description,
                  style: const TextStyle(fontSize: 12),
                  maxLines: 4,
                  softWrap: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 90),
                child: Text(
                  price,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
