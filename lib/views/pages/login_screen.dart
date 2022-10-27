import 'package:flutter/material.dart';
import 'package:repo/core/constant/colors.dart';
import 'package:repo/core/constant/assets.dart';
import 'package:get/get.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/views/widgets/error_warning_message.dart';

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
    if (_emailController.text == "" || _passwordController.text == "") {
      Message.pesanErrorAtauWarning(
          "Warning!", "Email/Password Tidak Boleh Kosong!");
      terisi = false;
    }
    return terisi;
  }

  emailHandler() {
    bool emailValidation =
        RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(_emailController.text);
    if (!emailValidation) {
      Message.pesanErrorAtauWarning("Warning!", "Email Salah!");
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
                  logoITC,
                  height: 88,
                  width: 54,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "ITC Repository",
                  style: TextStyle(
                    color: convertColor(primaryColor),
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Masuk",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: convertColor(secondaryColor),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: convertColor(primaryColor),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: convertColor(primaryColor).withOpacity(0.8),
                        width: 2,
                      ),
                    ),
                    hintText: "Email",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: TextField(
                    controller: _passwordController,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: convertColor(secondaryColor),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: convertColor(primaryColor),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: convertColor(primaryColor).withOpacity(0.8),
                          width: 2,
                        ),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(12, 18, 20, 10),
                      suffixIcon: IconButton(
                        color: convertColor(primaryColor),
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                      hintText: "Password",
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Lupa Kata sandi?",
                        style: TextStyle(
                          color: convertColor(primaryColor),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 44,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {
                      nullHandler();
                      emailHandler();
                    },
                    style: raisedButtonStyle,
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Belum mempunyai akun?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                          color: convertColor(primaryColor),
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

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: convertColor(primaryColor),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5))),
  );
}
