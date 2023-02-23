import 'package:flutter/material.dart';
import 'package:mystore/routes/routes.dart';
import 'package:mystore/utils/theme.dart';
import 'package:mystore/view/widgets/auth_container.dart';
import 'package:mystore/view/widgets/checking_box.dart';
import 'package:mystore/view/widgets/my_text.dart';
import 'package:mystore/view/widgets/my_theme_text_form_field.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  TextEditingController? usercontroller = TextEditingController();
  TextEditingController? emailcontroller = TextEditingController();
  TextEditingController? passwordcontroller = TextEditingController();

  SignupScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.isDarkMode == true;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
          elevation: 0,
        ),
        backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1.3,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        MyText(
                          color: Get.isDarkMode ? mainColor : pinkClr,
                          text: "SIGN",
                          fontsize: 28,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                        ),
                        SizedBox(width: 4),
                        MyText(
                          color: Get.isDarkMode ? Colors.black : Colors.white,
                          text: "UP",
                          fontsize: 28,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    MyTextFormField(
                      controller: usercontroller,
                      obsecuretext: false,
                      validator: () {},
                      text: "User Name",
                      prefixicon: Get.isDarkMode
                          ? Image.asset("lib/images/user.png")
                          : Icon(
                              Icons.person,
                              size: 30,
                              color: pinkClr,
                            ),
                      suffixicon: Text(""),
                    ),
                    SizedBox(height: 18),
                    MyTextFormField(
                      controller: emailcontroller,
                      obsecuretext: false,
                      validator: () {},
                      text: "Email",
                      prefixicon: Get.isDarkMode
                          ? Image.asset("lib/images/mail.png")
                          : Icon(
                              Icons.email,
                              size: 30,
                              color: pinkClr,
                            ),
                      suffixicon: Text(""),
                    ),
                    SizedBox(height: 18),
                    MyTextFormField(
                      controller: passwordcontroller,
                      obsecuretext: false,
                      validator: () {},
                      text: "Password",
                      prefixicon: Get.isDarkMode
                          ? Image.asset("lib/images/lock.png")
                          : Icon(
                              Icons.lock,
                              size: 30,
                              color: pinkClr,
                            ),
                      suffixicon: Text(""),
                    ),
                    SizedBox(height: 18),
                    MyCheckingBox(),
                  ]),
            ),
          ),
          AuthContainer(
              text2: 'sign in',
              text1: 'Already have an account ?',
              onpressed: () {
                Get.offNamed(RoutesName.login);
              }),
        ])),
      ),
    );
  }
}
