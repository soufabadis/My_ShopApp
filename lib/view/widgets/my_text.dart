import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyText extends StatelessWidget {
  final FontWeight fontWeight;
  final String text;
  final double fontsize;
  final TextDecoration decoration;
  final Color color;
  const MyText(
      {required this.color,
      required this.decoration,
      required this.fontsize,
      required this.fontWeight,
      required this.text,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: color,
        decoration: decoration,
      ),
    );
  }
}
