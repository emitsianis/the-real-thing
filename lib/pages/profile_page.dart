import 'package:flutter/material.dart';
import 'package:the_real_thing/components/toolbar.dart';
import 'package:the_real_thing/components/user_avatar.dart';
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
      body: const Column(children: [
        UserAvatar(size: 90),
        SizedBox(height: 24),
        Text(
          'User Name',
          style: AppText.header2,
        ),
        SizedBox(height: 12),
        Text(
          'Madagascar',
          style: AppText.subtitle3,
        ),
        SizedBox(height: 24),
        Row(
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
        Divider(
          thickness: 1,
          height: 24,
        ),
      ]),
    );
  }
}
