import 'package:flutter_clean_architecture/app/pages/home/home_page.dart';
import 'package:flutter_clean_architecture/app/pages/login/login_page.dart';

class Routes {
  static String home = '/home';
  static String login = '/login';
  static String detail = '/detail';

  static final routes = {
    home: (_) => HomePage(),
    login: (_) => LoginPage(),
    detail: (_) => HomePage(),
  };
}
