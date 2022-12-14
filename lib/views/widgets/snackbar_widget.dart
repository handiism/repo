import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/utils/formatting.dart';

SnackbarController snackbarRepo(String title, String message) {
  return Get.snackbar(
    title,
    message,
    icon: const Icon(
      Icons.warning,
      color: Colors.yellow,
    ),
    backgroundColor: hexToColor(ColorsRepo.redColorDanger),
    titleText: Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    messageText: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
    borderRadius: 5,
  );
}

SnackbarController snackbarRepoSuccess(String title, String message) {
  return Get.snackbar(
    title,
    message,
    icon: const Icon(
      Icons.check,
      color: Colors.white,
    ),
    backgroundColor: hexToColor(ColorsRepo.blueDeFrance),
    titleText: Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    messageText: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
    borderRadius: 5,
  );
}