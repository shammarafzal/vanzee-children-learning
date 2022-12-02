import 'package:get/get.dart';
import 'package:vanzee/Screens/story1/story_page.dart';
import 'package:vanzee/Screens/bottom_bar_screens/home.dart';
import 'package:vanzee/Screens/story2/story_page2.dart';
import 'package:vanzee/Screens/story3/story_page3.dart';

import '../Screens/bottom_bar_screens/settings.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/home',
      page: () => Home(),
    ),
    GetPage(
      name: '/storyPage',
      page: () => StoryPage(),
    ),
    GetPage(
      name: '/storyPage2',
      page: () => StoryPage2(),
    ),
    GetPage(
      name: '/storyPage3',
      page: () => StoryPage3(),
    ),
    GetPage(
      name: '/settings',
      page: () => SettingsPage(),
    ),
  ];
}
