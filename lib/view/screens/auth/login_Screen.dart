import 'package:flutter/material.dart';
import 'package:mystore/utils/theme.dart';
import 'package:mystore/view/widgets/my_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Row(children: [
            MyText(
              color: mainColor,
              text: "SignUP",
              fontsize: 15,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            )
          ]),
        ]),
      ),
    ));
  }
}
