import 'package:flutter/material.dart';
import 'package:mystore/routes/routes.dart';
import 'package:mystore/view/screens/welcome_screen.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesName.welcomescreen,
      getPages: Routes.routes,
    );
  }
}
