import 'package:flutter/material.dart';
import 'package:the_real_thing/components/app_text_field.dart';
import 'package:the_real_thing/components/toolbar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Toolbar(
        title: 'Edit Profile',
      ),
      body: Column(
        children: [
         AppTextField(hint: 'First name'),
         AppTextField(hint: 'Last name'),
         AppTextField(hint: 'Phone number'),
         AppTextField(hint: 'Location'),
        ],
      ),
    );
  }
}
