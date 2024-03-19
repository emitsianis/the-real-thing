import '../../models/user.dart';

class LoginResponse {
  final User user;
  final String token;

  LoginResponse({required this.user, required this.token});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    print('json');
    print(json);

    return LoginResponse(
      user: User.fromJson(json),
      token: json['token'],
    );
  }
}