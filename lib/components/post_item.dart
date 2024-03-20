import 'package:flutter/material.dart';
import 'package:the_real_thing/data/models/post.dart';
import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  final Post post;

  PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/user1.png',
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 16),
              Text(
                '${post.owner?.firstName} ${post.owner?.lastName}',
                style: AppText.subtitle3,
              )
            ],
          ),
          if (post.image != null) ...[
            const SizedBox(height: 12),
            Image.network(post.image ?? ''),
          ],
          const SizedBox(height: 12),
          Text(
            post.message!,
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
