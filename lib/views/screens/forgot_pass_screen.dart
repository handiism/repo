import 'package:flutter/material.dart';
import 'package:repo/controllers/forgot_pass_controller.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/models/user/forgot_password.dart';
import 'package:repo/views/widgets/index.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  nullHandler() {
    bool isFilled = true;
    if (_emailController.text == '') {
      snackbarRepo('Warning!', 'Email Tidak Boleh Kosong!');
      isFilled = false;
    }
    return isFilled;
  }

  emailHandler() {
    bool emailValidation =
        RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(_emailController.text);
    if (!emailValidation) {
      snackbarRepo('Warning!', 'Email Salah!');
    }
    return emailValidation;
  }

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
                const BannerRepo(),
                const SizedBox(
                  height: 24,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lupa Kata Sandi',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFieldRepo(
                  textController: _emailController,
                  hintText: 'Masukkan Alamat Email',
                ),
                const SizedBox(
                  height: 12,
                ),
                ButtonRepo(
                  text: 'Kirim',
                  backgroundColor: ColorsRepo.primaryColor,
                  changeTextColor: false,
                  onPressed: () {
                    if (nullHandler()) {
                      if (emailHandler()) {
                        ForgotPasswordRequest request = ForgotPasswordRequest(
                          email: _emailController.text.trim(),
                        );
                        Get.find<ForgotpassController>().login(request);
                      }
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutesRepo.login);
                  },
                  child: Text(
                    'Kembali ke Halaman Masuk',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: hexToColor(ColorsRepo.primaryColor),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
