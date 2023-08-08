import 'package:flutter/material.dart';
import 'package:tutorial/pages/home_page.dart';
//import 'package:tutorial/pages/login_page.dart';
import 'package:tutorial/pages/main_page.dart';
import 'package:tutorial/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        //'/': (context) => LoginPage(),
        '/': (context) => MainPage(),
        '/home': (context) => HomePage(),
        //'/main': (context) => MainPage(),
      },
    );
  }
}
