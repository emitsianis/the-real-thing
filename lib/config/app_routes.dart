import '../pages/edit_profile_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';

class AppRoutes {
  static final pages = {
    AppRoutes.login: (context) => const LoginPage(),
    AppRoutes.home: (context) => HomePage(),
    AppRoutes.main: (context) => const MainPage(),
    AppRoutes.editProfile: (context) => EditProfilePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}
