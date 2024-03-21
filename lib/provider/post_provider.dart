import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:the_real_thing/data/services/create_post_service.dart';
import 'package:the_real_thing/data/services/get_post_service.dart';
import 'package:the_real_thing/data/services/upload_service.dart';
import 'package:the_real_thing/utils/utils.dart';

import '../data/models/post.dart';
import '../data/models/user.dart';

class PostProvider extends ChangeNotifier {
  final List<Post> list = [];
  String message = '';
  String? imagePath = '';

  getPosts() async {
    list.clear();
    list.addAll(await GetPostService().mockGetPostServiceCall());
    notifyListeners();
  }

  Future<void> createPost(String token) async {
    String? image;

    if (imagePath != '') {
      image = await upload();
    }

    await CreatePostService(message, image, token).call();
    message = '';
    imagePath = '';
    getPosts();
  }

  Future<String> upload() async {
    return await UploadService(imagePath!).call();
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

  pickImage(ImageSource source) async {
    try {
      final path = await Utils.pickImage(source);
      final croppedImage = await Utils.cropImage(path);
      imagePath = croppedImage?.path ?? '';
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  deleteImage() {
    imagePath = '';
    notifyListeners();
  }
}
