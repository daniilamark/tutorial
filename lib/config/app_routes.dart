import 'package:tutorial/pages/edit_profile_page.dart';
import 'package:tutorial/pages/home_page.dart';
import 'package:tutorial/pages/login_page.dart';
import 'package:tutorial/pages/main_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => LoginPage(),
    home: (context) => HomePage(),
    main: (context) => const MainPage(),
    editProfile: (context) => const EditProfilePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}
