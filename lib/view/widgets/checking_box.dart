import 'package:flutter/material.dart';
import 'package:mystore/utils/theme.dart';
import 'package:mystore/view/widgets/my_text.dart';
import 'package:get/get.dart';
import 'package:mystore/logic/controller/auth_controller.dart';

class MyCheckingBox extends StatelessWidget {
  final authcontroller = Get.find<AuthController>();

  MyCheckingBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Obx(
              () => InkWell(
                onTap: () {
                  authcontroller.ischeckedbox();
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Get.isDarkMode ? Colors.black12 : Colors.white),
                  child: AuthController.ischecked.value
                      ? Get.isDarkMode
                          ? Image.asset("lib/images/check.png")
                          : Icon(
                              Icons.check,
                              size: 30,
                              color: pinkClr,
                            )
                      : Container(),
                ),
              ),
            ),
            SizedBox(width: 10),
            MyText(
              color: Get.isDarkMode ? Colors.black : Colors.white,
              text: "I accept",
              fontsize: 16,
              fontWeight: FontWeight.w100,
              decoration: TextDecoration.none,
            ),
            SizedBox(width: 3),
            MyText(
              color: Get.isDarkMode ? Colors.black : Colors.white,
              text: "terme and condition",
              fontsize: 16,
              fontWeight: FontWeight.w100,
              decoration: TextDecoration.underline,
            )
          ],
        ),
        SizedBox(height: 13),
        ElevatedButton(
          onPressed: () {},
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
        ),
      ],
    );
  }
}
