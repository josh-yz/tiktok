import 'package:flutter/material.dart';

class GradientBag extends StatelessWidget {
  final List<Color> colors;
  GradientBag(
      {Key? key, this.colors = const [Colors.transparent, Colors.black87]})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors,
              stops: const [0.8, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
    ));
  }
}
