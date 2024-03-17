import 'package:flutter/material.dart';
import 'package:the_real_thing/components/post_item.dart';
import 'package:the_real_thing/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  mockUsersFromServer() {
    for (int i = 0; i < 100; i++) {
      users.add('User number$i');
    }
  }

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();

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
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(user: users[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 24);
        },
        itemCount: users.length,
      ),
    );
  }
}
