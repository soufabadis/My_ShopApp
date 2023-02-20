import 'package:get/get.dart';
import 'package:mystore/view/screens/welcome_screen.dart';

class Routes {
  static final routes = [
    GetPage(name: RoutesName.welcomescreen, page: () => WelcomeScreen())
  ];
}

class RoutesName {
  static const welcomescreen = '/welcomescreen';
}
