import 'package:flutter/material.dart';
import 'package:mystore/logic/controller/auth_controller.dart';
import 'package:mystore/routes/routes.dart';
import 'package:mystore/utils/theme.dart';
import 'package:mystore/view/widgets/my_text.dart';
import 'package:mystore/view/widgets/my_theme_text_form_field.dart';
import 'package:get/get.dart';
import 'package:mystore/utils/my_string.dart';

class ForgotPasswordScreen extends StatelessWidget {
  TextEditingController? emailcontroller = TextEditingController();
  final GlobalKey<FormState> authkey = GlobalKey();
  AuthController authcontroller = AuthController();
  ForgotPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Get.isDarkMode ? Colors.black : Colors.white),
          onPressed: () {
            Get.offNamed(RoutesName.login);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
            key: authkey,
            child: Column(children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 2),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            MyText(
                              color: Get.isDarkMode ? mainColor : pinkClr,
                              text: "FORGOT ",
                              fontsize: 21,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                            SizedBox(width: 4),
                            MyText(
                              color:
                                  Get.isDarkMode ? Colors.black : Colors.white,
                              text: "PASSWORD ?",
                              fontsize: 21,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            )
                          ],
                        ),
                        SizedBox(height: 17),
                        MyText(
                          color: Get.isDarkMode ? Colors.black : Colors.white,
                          text:
                              "if you want to recover your account then please provide your email id below.",
                          fontsize: 16,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                        SizedBox(height: 25),
                        Container(
                          height: 230,
                          width: 230,
                          child:
                              Image.asset('lib/images/resetpassword_icon.png'),
                        ),
                        MyTextFormField(
                          controller: emailcontroller,
                          obsecuretext: false,
                          validator: (value) {
                            if (!RegExp(validationEmail).hasMatch(value))
                              return 'Invalid Email';
                            else
                              return null;
                          },
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
                        SizedBox(height: 17),
                        ElevatedButton(
                          onPressed: () {},
                          child: MyText(
                            color: Colors.white,
                            text: 'Send ',
                            fontsize: 18,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Get.isDarkMode ? mainColor : pinkClr,
                            minimumSize: const Size(70, 70),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            shadowColor: Colors.lightGreen,
                          ),
                        ),
                      ],
                    )),
              ),
            ])),
      ),
    );
  }
}
