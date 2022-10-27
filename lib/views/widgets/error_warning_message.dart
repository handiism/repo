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
        ),
      ),
      messageText: Text(
        pesan,
      ),
      borderRadius: 5,
    );
  }
}
