import 'package:get/get.dart';
import 'package:mystore/logic/bindings/auth_binding.dart';
import 'package:mystore/view/screens/auth/login_Screen.dart';
import 'package:mystore/view/screens/auth/signup_screen.dart';
import 'package:mystore/view/screens/main_screen.dart';
import 'package:mystore/view/screens/welcome_screen.dart';
import 'package:mystore/view/screens/auth/forgot_password_screen.dart';

class Routes {
  final routes = [
    GetPage(
      name: RoutesName.welcomescreen,
      page: () => WelcomeScreen(),
    ),
    GetPage(
        name: RoutesName.login,
        page: () => LoginScreen(),
        binding: AuthBinding()),
    GetPage(
        name: RoutesName.signup,
        page: () => SignupScreen(),
        binding: AuthBinding()),
    GetPage(
        name: RoutesName.forgotpassword,
        page: () => ForgotPasswordScreen(),
        binding: AuthBinding()),
    GetPage(
      name: RoutesName.mainscreen,
      page: () => MainScreen(),
    ),
  ];
}

class RoutesName {
  static const welcomescreen = '/welcomescreen';
  static const login = '/loginScreen';

  static const signup = '/signupScreen';
  static const forgotpassword = '/forgotpasswordscreen';
  static const mainscreen = '/mainscreen';
}
