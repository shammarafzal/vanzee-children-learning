import 'package:get/get.dart';
import 'package:vanzee/Screens/Auth/forgot_password.dart';
import 'package:vanzee/Screens/Auth/otp_verify.dart';
import 'package:vanzee/Screens/Auth/sign_in.dart';
import 'package:vanzee/Screens/Auth/sign_up.dart';

class Routes{
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
  ];
}
