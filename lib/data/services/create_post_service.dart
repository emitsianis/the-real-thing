import 'package:the_real_thing/data/services/base_service.dart';

import '../models/post.dart';

class CreatePostService extends ServiceBase<void> {
  final String message;
  final String? image;
  final String token;

  CreatePostService(this.message, this.image, this.token);

  @override
  Future<void> call() async {
    final body = {
      'message': message,
    };

    if (image != '') {
      body['image'] = image!;
    }

    await post('post', body: body, token: token);
  }
}
