import 'package:flutter/material.dart';
import 'package:the_real_thing/config/app_routes.dart';
import 'package:the_real_thing/pages/edit_profile_page.dart';
import 'package:the_real_thing/pages/home_page.dart';
import 'package:the_real_thing/pages/login_page.dart';
import 'package:the_real_thing/pages/main_page.dart';
import 'package:the_real_thing/styles/app_colors.dart';
import 'package:the_real_thing/user_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserProvider(
      userService: UserService(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.background,
          brightness: Brightness.dark,
        ),
        initialRoute: AppRoutes.login,
        routes: AppRoutes.pages,
      ),
    );
  }
}
