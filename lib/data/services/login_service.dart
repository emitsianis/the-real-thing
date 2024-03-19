import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:the_real_thing/config/app_config.dart';
import 'package:the_real_thing/data/responses/login_response.dart';
import 'package:the_real_thing/data/services/base_service.dart';

class LoginService extends ServiceBase<LoginResponse> {
  final String username;
  final String password;

  LoginService(
    this.username,
    this.password,
  );

  Future<LoginResponse> call() async {
    final result = await http.post(
      Uri.parse('${AppConfig.baseUrl}/login'),
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );

    return LoginResponse.fromJson(jsonDecode(result.body)['data']);
  }

  Future<LoginResponse> mockLoginServiceCall() async {
    await Future.delayed(const Duration(seconds: 1));

    Map<String, dynamic> mockData = {
      'data': {
        'id': 1,
        'firstName': 'John',
        'lastName': 'Doe',
        'mobile': '1234567890',
        'birthday': '2000-01-01',
        'gender': 'Male',
        'visibleGender': true,
        'token': 'abcd1234'
      }
    };

    return LoginResponse.fromJson(mockData['data']);
  }
}
