import 'package:get/get.dart';
import 'package:vanzee/Screens/auth/login.dart';
import 'package:vanzee/Screens/auth/register.dart';
import 'package:vanzee/Screens/bottom_bar_screens/home.dart';
import 'package:vanzee/Screens/front_page.dart';
import 'package:vanzee/Screens/splash_screen.dart';

import '../Screens/bottom_bar_screens/settings.dart';

class Routes {
  static final routes = [
    // GetPage(
    //   name: '/front',
    //   page: () => FrontPage(),
    // ),
    GetPage(
      name: '/splash',
      page: () => SplashScreen(),
    ),
    GetPage(
      name: '/home',
      page: () => Home(),
    ),
    GetPage(
      name: '/settings',
      page: () => SettingsPage(),
    ),
    GetPage(
      name: '/login',
      page: () => Login(),
    ),
    GetPage(
      name: '/register',
      page: () => Register(),
    ),
  ];
}
