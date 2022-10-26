import 'package:flutter/material.dart';
import 'package:repo/core/constant/colors.dart';
import 'package:repo/core/constant/assets.dart';

import 'package:repo/core/utils/formatting.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  height: 88.19999694824219,
                  width: 54.60000228881836,
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
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: convertColor(secondaryColor),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: convertColor(primaryColor),
                      ),
                    ),
                    hintText: "Email",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: convertColor(secondaryColor),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: convertColor(primaryColor),
                      ),
                    ),
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lupa Kata sandi?",
                      style: TextStyle(
                        color: convertColor(primaryColor),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
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
                    onPressed: () {},
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
