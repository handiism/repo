import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:repo/views/screens/index.dart';
import 'package:repo/views/widgets/bottom_navigation_widget.dart';

abstract class AppRoutesRepo {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgotPassword = '/forgotpass';
  static const String pertanyaan = '/pertanyaan';
  static const String bottomNavigator = '/bottomNavigator';

  static List<GetPage<Widget>> pages = [
    GetPage(
      name: login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: signup,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: forgotPassword,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
      name: pertanyaan,
      page: () => const PertanyaanScreen(),
    ),
    GetPage(name: bottomNavigator, page: () => const BottomNavRepo())
  ];
}
