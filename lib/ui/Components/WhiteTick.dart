import 'package:flutter/material.dart';

class Tick extends StatelessWidget {
  final DecorationImage image;

  Tick({required this.image});

  @override
  Widget build(BuildContext context) {
    return (new Container(
      margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
      width: 250.0,
      height: 250.0,
      alignment: Alignment.center,
      decoration: new BoxDecoration(
        image: image,
      ),
    ));
  }
}
