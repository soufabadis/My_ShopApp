import 'package:get/get.dart';
import 'package:mystore/view/screens/auth/login_Screen.dart';
import 'package:mystore/view/screens/auth/signup_screen.dart';
import 'package:mystore/view/screens/welcome_screen.dart';

class Routes {
  static final routes = [
    GetPage(name: RoutesName.welcomescreen, page: () => WelcomeScreen()),
    GetPage(name: RoutesName.login, page: () => LoginScreen()),
    GetPage(name: RoutesName.signup, page: () => SignupScreen())
  ];
}

class RoutesName {
  static const welcomescreen = '/welcomescreen';
  static const login = '/loginScreen';

  static const signup = '/signupScreen';
}
