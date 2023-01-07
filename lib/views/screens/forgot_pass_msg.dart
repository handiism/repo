import 'package:flutter/material.dart';
import 'package:repo/controllers/forgot_pass_controller.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/models/user/forgot_password.dart';
import 'package:repo/views/widgets/index.dart';
import 'package:get/get.dart';

class ForgotPasswordMsg extends StatelessWidget {
  const ForgotPasswordMsg({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(
      () => ForgotpassController(),
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(36, 36, 36, 0),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                const BannerRepo(),
                const SizedBox(
                  height: 24,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Silahkan Cek Email Anda',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Kami Telah Mengirimkan URL Untuk Mengatur Kata Sandi Anda',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: hexToColor(ColorsRepo.darkGray),
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                ButtonRepo(
                  text: 'Kembali ke Halaman Masuk',
                  backgroundColor: ColorsRepo.primaryColor,
                  changeTextColor: false,
                  onPressed: () {
                    Get.toNamed(AppRoutesRepo.login);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
