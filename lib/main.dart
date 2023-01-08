import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await SharedPreferences.getInstance();
  FlutterNativeSplash.remove();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutesRepo.login,
      title: 'ITC Repository',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      getPages: AppRoutesRepo.pages,
    ),
  );
}
