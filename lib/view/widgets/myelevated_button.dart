import 'package:flutter/material.dart';
import 'package:mystore/utils/theme.dart';
import 'package:mystore/view/widgets/my_text.dart';
import 'package:get/get.dart';

class MyElevatedButton extends StatelessWidget {
  final Function() onpressed;
  const MyElevatedButton({required this.onpressed, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      child: MyText(
        color: Colors.white,
        text: 'Sign Up ',
        fontsize: 18,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Get.isDarkMode ? mainColor : pinkClr,
        minimumSize: const Size(70, 70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadowColor: Colors.lightGreen,
      ),
    );
  }
}
