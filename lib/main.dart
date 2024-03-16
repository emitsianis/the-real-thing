import 'package:flutter/material.dart';
import 'package:the_real_thing/pages/home_page.dart';
import 'package:the_real_thing/pages/login_page.dart';
import 'package:the_real_thing/pages/main_page.dart';
import 'package:the_real_thing/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
