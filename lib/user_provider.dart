import 'package:flutter/material.dart';

import 'models/user.dart';

class UserProvider extends InheritedWidget {
  final UserService userService;

  const UserProvider({
    super.key,
    required Widget child,
    required this.userService,
  }) : super(child: child);

  static UserService? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserProvider>()?.userService;
  }

  @override
  bool updateShouldNotify(UserProvider oldWidget) {
    return userService.user?.id != oldWidget.userService.user?.id;
  }
}

class UserService {
  User? _user;

  User? get user => _user;

  updateUser(User user) {
    _user = user;
  }
}
