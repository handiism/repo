import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:repo/views/screens/forgot_pass_msg.dart';
import 'package:repo/views/screens/index.dart';
import 'package:repo/views/widgets/bottom_navigation_widget.dart';

abstract class AppRoutesRepo {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgotPassword = '/forgotpass';
  static const String pertanyaan = '/pertanyaan';
  static const String bottomNavigator = '/bottomNavigator';
  static const String discussMateri = '/discuss';
  static const String addDiscuss = "/addDiscuss";
  static const String daftarMateri = "/daftarMateri";
  static const String forgotPasswordMassage = '/forgotpassmsg';
  static const String bab = '/bab';

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
      name: forgotPasswordMassage,
      page: () => const ForgotPasswordMsg(),
    ),
    GetPage(
      name: discussMateri,
      page: () => const DiscussMateri(),
    ),
    GetPage(
      name: pertanyaan,
      page: () => const PertanyaanScreen(),
    ),
    GetPage(name: bottomNavigator, page: () => const BottomNavRepo()),
    GetPage(
      name: addDiscuss,
      page: () => const AddDiscussScreen(),
    ),
    GetPage(
      name: daftarMateri,
      page: () => const DaftarMateriScreen(),
    ),
     GetPage(
      name: bab,
      page: () => const BabScreen(),
    ),
  ];
}
