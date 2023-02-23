import 'package:flutter/material.dart';
import 'package:mystore/routes/routes.dart';
import 'package:mystore/utils/theme.dart';
import 'package:mystore/view/widgets/auth_container.dart';
import 'package:mystore/view/widgets/checking_box.dart';
import 'package:mystore/view/widgets/my_text.dart';
import 'package:mystore/view/widgets/my_theme_text_form_field.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController? usercontroller = TextEditingController();
  TextEditingController? emailcontroller = TextEditingController();
  TextEditingController? passwordcontroller = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
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
                          color: mainColor,
                          text: "SIGN",
                          fontsize: 28,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                        ),
                        SizedBox(width: 4),
                        MyText(
                          color: Colors.black,
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
                      prefixicon: Image.asset("lib/images/user.png"),
                      suffixicon: Text(""),
                    ),
                    SizedBox(height: 18),
                    MyTextFormField(
                      controller: emailcontroller,
                      obsecuretext: false,
                      validator: () {},
                      text: "Email",
                      prefixicon: Image.asset("lib/images/user.png"),
                      suffixicon: Text(""),
                    ),
                    SizedBox(height: 18),
                    MyTextFormField(
                      controller: passwordcontroller,
                      obsecuretext: false,
                      validator: () {},
                      text: "Password",
                      prefixicon: Image.asset("lib/images/lock.png"),
                      suffixicon: Text(""),
                    ),
                    SizedBox(height: 18),
                    MyCheckingBox(),
                  ]),
            ),
          ),
          AuthContainer(
              text2: 'signin',
              text1: 'Alread have an account ?',
              onpressed: () {
                Get.offNamed(RoutesName.login);
              }),
        ])),
      ),
    );
  }
}
