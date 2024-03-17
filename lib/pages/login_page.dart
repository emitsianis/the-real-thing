import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_real_thing/config/app_routes.dart';
import 'package:the_real_thing/config/app_strings.dart';
import 'package:the_real_thing/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(children: [
              const Spacer(),
              const Text(
                AppStrings.helloWelcome,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                AppStrings.loginToContinue,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              TextField(
                decoration: InputDecoration(
                  hintText: AppStrings.username,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              const SizedBox(height: 16),
              // Add a SizedBox to create space between the widgets
              TextField(
                decoration: InputDecoration(
                  hintText: AppStrings.password,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    print('Forgot button pressed');
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(AppStrings.forgotPassword),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                  },
                  child: const Text(AppStrings.login),
                ),
              ),
              const Spacer(),
              const Text(
                AppStrings.orSignInWith,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    print('Google button pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        width: 22,
                        height: 22,
                      ),
                      const SizedBox(width: 8),
                      const Text(AppStrings.loginWithGoogle)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    print('Google button pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/facebook.png',
                        width: 22,
                        height: 22,
                      ),
                      const SizedBox(width: 8),
                      const Text(AppStrings.loginWithFacebook)
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    AppStrings.dontHaveAccount,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print('Sign up button pressed');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.amber,
                    ),
                    child: const Text(AppStrings.signUp),
                  ),
                ],
              ),
              const Spacer(),
            ]),
          ),
        ),
      ),
    );
  }
}
