import 'package:flutter/material.dart';
import 'package:the_real_thing/data/services/get_post_service.dart';

import '../data/models/post.dart';

class PostProvider extends ChangeNotifier {
  final List<Post> list = [];

  getPosts() async {
    list.clear();
    list.addAll(await GetPostService().mockGetPostServiceCall());
    notifyListeners();
  }
}
