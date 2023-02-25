import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  final double circleraduis;
  final String imagename;
  const MyCircleAvatar(
      {required this.circleraduis, required this.imagename, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(imagename),
      radius: circleraduis,
    );
  }
}
