import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repo/core/routes/routes.dart';

void main() async {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutesRepo.daftarMateri,
      title: 'ITC Repository',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      getPages: AppRoutesRepo.pages,
    ),
  );
}
