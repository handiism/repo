import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:repo/views/pages/login_screen.dart';
import 'package:repo/views/pages/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ITC Project',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
