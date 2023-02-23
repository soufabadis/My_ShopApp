import 'package:flutter/material.dart';
import 'package:mystore/utils/theme.dart';
import 'package:mystore/view/widgets/my_text.dart';
import 'package:get/get.dart';

class AuthContainer extends StatelessWidget {
  final Function() onpressed;
  final String text1;
  final String text2;

  const AuthContainer({
    required this.text2,
    required this.text1,
    required this.onpressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Get.isDarkMode ? mainColor : pinkClr,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: TextButton(
        onPressed: onpressed,
        child: Row(
          children: [
            SizedBox(width: 10),
            MyText(
              color: Colors.white,
              text: text1,
              fontsize: 16,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
            SizedBox(width: 5),
            MyText(
              color: Colors.white,
              text: text2,
              fontsize: 16,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ],
        ),
      ),
    );
  }
}
