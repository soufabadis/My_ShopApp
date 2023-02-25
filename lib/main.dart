import 'package:flutter/material.dart';
import 'package:mystore/routes/routes.dart';
import 'package:mystore/view/screens/welcome_screen.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Routes routes = Routes();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Myshop Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesName.welcomescreen,
      getPages: routes.routes,
    );
  }
}
