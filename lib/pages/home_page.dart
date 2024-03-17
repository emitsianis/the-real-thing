import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_real_thing/components/post_item.dart';
import 'package:the_real_thing/config/app_strings.dart';

import '../components/toolbar.dart';

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
      appBar: Toolbar(
        title: AppStrings.appName,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/svg/ic_location.svg'),
          ),
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
