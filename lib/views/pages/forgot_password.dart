import 'package:flutter/material.dart';
import 'package:repo/core/constant/colors.dart';
import 'package:repo/core/constant/assets.dart';
import 'package:repo/core/routes.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/core/utils/styles.dart';
import 'package:repo/views/widgets/error_warning_message_widget.dart';
import 'package:get/get.dart';

final TextEditingController _emailController = TextEditingController();

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  nullHandler() {
    bool terisi = true;
    if (_emailController.text == '') {
      snackbarRepo('Warning!', 'Email Tidak Boleh Kosong!');
      terisi = false;
    }
    return terisi;
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(32, 0, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //logo
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 35.8, 0, 0),
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AssetsRepo.itcLogo),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Text(
                    'ITC Repository',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: hexToColor(ColorsRepo.primaryColor),
                        fontSize: 28),
                  ),
                ),

                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Text(
                    'Lupa Kata Sandi',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20),
                  ),
                ),

                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Text(
                    'Email',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: SizedBox(
                    height: 44,
                    child: TextFormField(
                      controller: _emailController,
                      style: TextStyle(
                        fontSize: 16,
                        color: hexToColor(ColorsRepo.primaryColor),
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0x00000000)),
                            borderRadius: BorderRadius.circular(6)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: hexToColor(ColorsRepo.primaryColor),
                          ),
                        ),
                        hintText: 'Masukkan Alamat Email',
                        hintStyle: TextStyle(
                          color: hexToColor(ColorsRepo.primaryColor),
                          fontSize: 16,
                        ),
                        filled: true,
                        fillColor: hexToColor(ColorsRepo.secondaryColor),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: SizedBox(
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () {
                        nullHandler();
                        emailHandler();
                      },
                      style: raisedButtonStyle(),
                      child: const Text('Kirim'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed(RoutesRepo.login);
                    },
                    child: const Text(
                      'Kembali ke Halaman Masuk',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(1, 87, 92, 1),
                          fontSize: 16),
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
