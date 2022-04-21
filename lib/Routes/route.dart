import 'package:get/get.dart';
import 'package:vanzee/Screens/Auth/change_password.dart';
import 'package:vanzee/Screens/Auth/forgot_password.dart';
import 'package:vanzee/Screens/Auth/otp_verify.dart';
import 'package:vanzee/Screens/Auth/sign_in.dart';
import 'package:vanzee/Screens/Auth/sign_up.dart';
import 'package:vanzee/Screens/Components/story_page.dart';
import 'package:vanzee/Screens/home.dart';
import 'package:vanzee/Screens/search.dart';
import 'package:vanzee/Screens/settings.dart';

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
      name: '/search',
      page: () => Search(),
    ),
       GetPage(
      name: '/settings',
      page: () => SettingsPage(),
    ),
  ];
}
