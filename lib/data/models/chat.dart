import 'package:the_real_thing/data/models/user.dart';

class Chat {
  final String message;
  final User user;

  Chat(this.message, this.user);

  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      json['message'],
      User.fromJson(json['user']),
    );
  }
}