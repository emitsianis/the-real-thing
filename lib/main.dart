import 'package:flutter/material.dart';
import 'package:the_real_thing/config/app_routes.dart';
import 'package:the_real_thing/pages/edit_profile_page.dart';
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
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context) => const LoginPage(),
        AppRoutes.home: (context) => HomePage(),
        AppRoutes.main: (context) => const MainPage(),
        AppRoutes.editProfile: (context) => EditProfilePage(),
      },
    );
  }
}
