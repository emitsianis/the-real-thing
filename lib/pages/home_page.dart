import 'package:flutter/material.dart';
import 'package:the_real_thing/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Real Thing'),
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
        centerTitle: false,
        actions: const [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: ListView(
         children: mockUsersFromServer(),
      ),
    );
  }
}

Widget _userItem() {
  return Row(
    children: [
      Image.asset(
        'assets/temp/user1.png',
        width: 40,
        height: 40,
      ),
      const SizedBox(width: 16),
      const Text("Sarah Fernandez")
    ],
  );
}

List<Widget> mockUsersFromServer() {
  List<Widget> Users = [];

  for (int i = 0; i < 20; i++) {
    Users.add(_userItem());
  }

  return Users;
}
