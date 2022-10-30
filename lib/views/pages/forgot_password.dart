import 'package:flutter/material.dart';
import 'package:repo/core/constant/colors.dart';
import 'package:repo/core/constant/assets.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/core/utils/styles.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 35.8, 0, 0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(logoITC)),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Text(
                      "ITC Repository",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: convertColor(primaryColor),
                          fontSize: 28),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                    child: Text(
                      "Lupa Kata Sandi",
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
                      "Email",
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
                        style: TextStyle(
                          fontSize: 16,
                          color: convertColor(primaryColor),
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0x00000000)),
                              borderRadius: BorderRadius.circular(6)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: convertColor(primaryColor),
                            ),
                          ),
                          hintText: "Masukkan Alamat Email",
                          hintStyle: TextStyle(
                              color: convertColor(primaryColor), fontSize: 16),
                          filled: true,
                          fillColor: convertColor(secondaryColor),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                    child: SizedBox(
                      height: 44,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Kirim"),
                        style: raisedButtonStyle(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Kembali ke Halaman Masuk",
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
      ),
    );
  }
}
