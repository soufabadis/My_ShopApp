import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mystore/routes/routes.dart';
import 'package:mystore/utils/theme.dart';
import 'package:mystore/view/widgets/my_text.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "lib/images/background.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(0.4),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 80),
                Center(
                  child: Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black.withOpacity(0.2),
                    ),
                    alignment: Alignment.center,
                    child: MyText(
                      color: Color(0xff00BE84),
                      text: 'MyShop Store ',
                      fontsize: 30,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 48, vertical: 18),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offNamed(RoutesName.login);
                    },
                    child: MyText(
                      color: Colors.white,
                      text: 'Get Start ',
                      fontsize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                MyText(
                  color: Colors.white.withOpacity(0.8),
                  text: "Don't have an account ?",
                  fontsize: 15,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
                TextButton(
                  onPressed: () {
                    Get.offNamed(RoutesName.signup);
                  },
                  child: MyText(
                    color: Colors.white.withOpacity(0.8),
                    text: "SignUp",
                    fontsize: 15,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ]),
        ],
      ),
    ));
  }
}
