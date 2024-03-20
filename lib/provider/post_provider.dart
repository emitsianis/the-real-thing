import 'package:flutter/material.dart';
import 'package:the_real_thing/data/services/create_post_service.dart';
import 'package:the_real_thing/data/services/get_post_service.dart';

import '../data/models/post.dart';
import '../data/models/user.dart';

class PostProvider extends ChangeNotifier {
  final List<Post> list = [];
  String message = '';

  getPosts() async {
    list.clear();
    list.addAll(await GetPostService().mockGetPostServiceCall());
    notifyListeners();
  }

  Future<void> createPost(String token) async {
    await CreatePostService(message, null, token).call();
    message = '';
    getPosts();
  }

  Future<void> mockCreatePost(String token) async {
    await Future.delayed(const Duration(seconds: 1));

    Post newPost = Post(
      list.length + 1,
      message,
      User(
        1,
        'John',
        'Doe',
        '1234567890',
        '2000-01-01',
        'Male',
        true,
      ),
      DateTime.parse('2022-01-01T00:00:00.000Z'),
      'https://images.pexels.com/photos/406014/pexels-photo-406014.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    );

    list.add(newPost);
    message = '';
    notifyListeners();
  }
}
