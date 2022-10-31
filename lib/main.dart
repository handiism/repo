import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repo/core/routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesRepo.login,
      title: 'ITC Repository',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      getPages: RoutesRepo.pages,
    ),
  );
}
