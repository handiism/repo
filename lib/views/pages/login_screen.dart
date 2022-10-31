import 'package:flutter/material.dart';
import 'package:repo/core/constant/colors.dart';
import 'package:repo/core/constant/assets.dart';
import 'package:repo/core/routes.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/views/widgets/button_widget.dart';
import 'package:get/get.dart';

import '../widgets/error_warning_message_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool _isObscure = true;

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  nullHandler() {
    bool terisi = true;
    if (_emailController.text == '' || _passwordController.text == '') {
      snackbarRepo('Warning!', 'Email/Password Tidak Boleh Kosong!');
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(34, 34, 34, 0),
        child: Container(
          margin: const EdgeInsets.only(top: 35.8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  AssetsRepo.itcLogo,
                  height: 88,
                  width: 54,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'ITC Repository',
                  style: TextStyle(
                    color: hexToColor(ColorsRepo.primaryColor),
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Text(
                      'Masuk',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: hexToColor(ColorsRepo.secondaryColor),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: hexToColor(ColorsRepo.primaryColor),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: hexToColor(ColorsRepo.primaryColor)
                            .withOpacity(0.8),
                        width: 2,
                      ),
                    ),
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _passwordController,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: hexToColor(ColorsRepo.secondaryColor),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: hexToColor(ColorsRepo.primaryColor),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: hexToColor(ColorsRepo.primaryColor)
                            .withOpacity(0.8),
                        width: 2,
                      ),
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(12, 18, 20, 10),
                    suffixIcon: IconButton(
                      color: hexToColor(ColorsRepo.primaryColor),
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    hintText: 'Password',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed(RoutesRepo.forgotPassword);
                      },
                      child: Text(
                        'Lupa Kata sandi?',
                        style: TextStyle(
                          color: hexToColor(ColorsRepo.primaryColor),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    nullHandler();
                    emailHandler();
                  },
                  child: const ButtonWidget(
                    text: 'Masuk',
                    backgroundColor: ColorsRepo.primaryColor,
                    changeTextColor: false,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Belum mempunyai akun?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(RoutesRepo.signup);
                      },
                      child: Text(
                        'Daftar',
                        style: TextStyle(
                          color: hexToColor(ColorsRepo.primaryColor),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
