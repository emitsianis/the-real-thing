import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_real_thing/config/app_routes.dart';
import 'package:the_real_thing/provider/app_repo.dart';
import 'package:the_real_thing/styles/app_colors.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppRepo>(
      create: (context) => AppRepo(),
      child: MyApp(),
    ),
  );
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
      routes: AppRoutes.pages,
    );
  }
}
