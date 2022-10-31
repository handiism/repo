import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:repo/views/pages/forgot_password.dart';
import 'package:repo/views/pages/login_screen.dart';
import 'package:repo/views/pages/signup_screen.dart';

abstract class RoutesRepo {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgotPassword = '/forgotpass';

  static List<GetPage<Widget>> pages = [
    GetPage(
      name: login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: signup,
      page: () => const SignupScreen(),
    ),
    GetPage(
      name: forgotPassword,
      page: () => const ForgotPasswordScreen(),
    ),
  ];
}
