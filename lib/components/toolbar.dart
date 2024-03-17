import 'package:flutter/material.dart';
import 'package:the_real_thing/styles/app_text.dart';

import '../styles/app_colors.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const Toolbar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppText.header1,
      ),
      backgroundColor: AppColors.background,
      foregroundColor: AppColors.white,
      centerTitle: false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
