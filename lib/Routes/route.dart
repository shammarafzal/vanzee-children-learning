import 'package:get/get.dart';
import 'package:vanzee/Screens/bottom_bar_screens/home.dart';
import 'package:vanzee/Screens/splash_screen.dart';
import 'package:vanzee/Screens/t.dart';
import '../Screens/bottom_bar_screens/settings.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/splash',
      page: () => TT(),
    ),
    GetPage(
      name: '/home',
      page: () => Home(),
    ),
    GetPage(
      name: '/settings',
      page: () => SettingsPage(),
    ),
  ];
}
