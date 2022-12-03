import 'package:get/get.dart';
import 'package:vanzee/Screens/bottom_bar_screens/home.dart';

import '../Screens/bottom_bar_screens/settings.dart';

class Routes {
  static final routes = [
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
