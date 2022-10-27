import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repo/core/constant/colors.dart';

import '../../core/utils/formatting.dart';

class Message {
  static void pesanErrorAtauWarning(String judul, String pesan) {
    Get.snackbar(
      judul,
      pesan,
      icon: Icon(
        Icons.warning,
        color: Colors.yellow,
      ),
      backgroundColor: convertColor(redColorDanger),
      titleText: Text(
        judul,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      messageText: Text(
        pesan,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      borderRadius: 5,
    );
  }
}
