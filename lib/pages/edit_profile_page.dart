import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_real_thing/components/app_text_field.dart';
import 'package:the_real_thing/components/toolbar.dart';
import 'package:the_real_thing/components/user_avatar.dart';
import 'package:the_real_thing/styles/app_colors.dart';
import 'package:the_real_thing/styles/app_text.dart';

import '../config/app_strings.dart';

enum Gender {
  none,
  male,
  female,
  other,
}

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(
        title: 'Edit Profile',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: UserAvatar(size: 120),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: const Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              const AppTextField(hint: AppStrings.firstName),
              const SizedBox(height: 16),
              const AppTextField(hint: AppStrings.lastName),
              const SizedBox(height: 16),
              const AppTextField(hint: AppStrings.phoneNumber),
              const SizedBox(height: 16),
              const AppTextField(hint: AppStrings.location),
              const SizedBox(height: 16),
              const AppTextField(hint: AppStrings.birthday),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.fieldColor,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.gender,
                      style: AppText.body1.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: const Text(AppStrings.male),
                            value: Gender.male,
                            groupValue: gender,
                            contentPadding: const EdgeInsets.all(0),
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.male;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: const Text(AppStrings.female),
                            value: Gender.female,
                            groupValue: gender,
                            contentPadding: const EdgeInsets.all(0),
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.female;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: const Text(AppStrings.other),
                            value: Gender.other,
                            groupValue: gender,
                            contentPadding: const EdgeInsets.all(0),
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.other;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
