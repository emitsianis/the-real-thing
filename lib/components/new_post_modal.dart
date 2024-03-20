import 'package:flutter/material.dart';
import 'package:the_real_thing/components/app_text_field.dart';
import 'package:the_real_thing/provider/app_repo.dart';
import 'package:the_real_thing/provider/post_provider.dart';
import 'package:the_real_thing/styles/app_colors.dart';
import 'package:the_real_thing/styles/app_text.dart';
import 'package:provider/provider.dart';

class NewPostModal extends StatelessWidget {
  const NewPostModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Create a Post!',
            style: AppText.header1,
          ),
          const SizedBox(height: 16),
          AppTextField(
            hint: 'Type something...',
            onChange: (value) {
              context.read<PostProvider>().message = value;
            },
          ),
          const SizedBox(height: 16),
          const Text(
            'Pick an Image',
            style: AppText.header1,
          ),
          const SizedBox(height: 16),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.white,
                width: 2,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(16)),
            ),
            child: const Center(
              child: Text('Upload from gallery'),
            ),
          ),
          const SizedBox(height: 16),
          const Text('OR'),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Use Camera'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final token = context.read<AppRepo>().token!;
              context.read<PostProvider>().mockCreatePost(token).then((value) {
                Navigator.of(context).pop();
              });
            },
            child: const Text('Create Post'),
          ),
        ],
      ),
    );
  }
}
