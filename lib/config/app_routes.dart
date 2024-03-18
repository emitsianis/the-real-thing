import 'package:the_real_thing/pages/nearby_page.dart';

import '../pages/edit_profile_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';

class AppRoutes {
  static final pages = {
    AppRoutes.login: (context) => LoginPage(),
    AppRoutes.home: (context) => HomePage(),
    AppRoutes.main: (context) => MainPage(),
    AppRoutes.editProfile: (context) => EditProfilePage(),
    AppRoutes.nearby: (context) => NearbyPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
}
