import 'package:flutter/material.dart';
import 'package:the_real_thing/data/responses/login_response.dart';
import 'package:the_real_thing/data/services/login_service.dart';

import '../models/user.dart';

class LoginProvider extends ChangeNotifier {
  var username = '';
  var password = '';

  Future<LoginResponse> login() async {
    return LoginService(username, password).mockLoginServiceCall();
  }
}
