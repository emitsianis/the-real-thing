import 'package:flutter/material.dart';
import 'package:the_real_thing/components/toolbar.dart';
import 'package:the_real_thing/config/app_routes.dart';
import 'package:the_real_thing/styles/app_text.dart';

import '../config/app_strings.dart';

enum ProfileMenu {
  edit,
  logout,
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: ProfileMenu.edit,
                  child: Text(AppStrings.edit),
                ),
                const PopupMenuItem(
                  value: ProfileMenu.logout,
                  child: Text(AppStrings.logout),
                ),
              ];
            },
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  print('Logout');
                  break;
              }
            },
          )
        ],
      ),
      body: Column(children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          child: Image.asset(
            'assets/temp/user1.png',
            width: 90,
            height: 90,
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'User Name',
          style: AppText.header2,
        ),
        const SizedBox(height: 12),
        const Text(
          'Madagascar',
          style: AppText.subtitle3,
        ),
        const SizedBox(height: 24),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  '472',
                  style: AppText.header2,
                ),
                Text(AppStrings.followers),
              ],
            ),
            Column(
              children: [
                Text(
                  '119',
                  style: AppText.header2,
                ),
                Text(AppStrings.posts),
              ],
            ),
            Column(
              children: [
                Text(
                  '860',
                  style: AppText.header2,
                ),
                Text(AppStrings.following),
              ],
            )
          ],
        ),
        const Divider(
          thickness: 1,
          height: 24,
        ),
      ]),
    );
  }
}
