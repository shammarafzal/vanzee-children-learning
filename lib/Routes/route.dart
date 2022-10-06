import 'package:get/get.dart';
import 'package:vanzee/Screens/Auth/change_password.dart';
import 'package:vanzee/Screens/Auth/forgot_password.dart';
import 'package:vanzee/Screens/Auth/otp_verify.dart';
import 'package:vanzee/Screens/Auth/sign_in.dart';
import 'package:vanzee/Screens/Auth/sign_up.dart';
import 'package:vanzee/Screens/story1/story_page.dart';
import 'package:vanzee/Screens/home.dart';
import 'package:vanzee/Screens/settings.dart';
import 'package:vanzee/Screens/story2/story_page2.dart';
import 'package:vanzee/Screens/story3/story_page3.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/signup',
      page: () => const SignUp(),
    ),
    GetPage(
      name: '/signin',
      page: () => const SignIn(),
    ),
    GetPage(
      name: '/forgotPassword',
      page: () => const ForgotPassword(),
    ),
    GetPage(
      name: '/verifyOtp',
      page: () => const OtpVerify(),
    ),
    GetPage(
      name: '/changePassword',
      page: () => const ChangePassword(),
    ),
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
