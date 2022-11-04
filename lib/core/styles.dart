import 'package:flutter/material.dart';
import 'package:repo/core/colors.dart';

import 'package:repo/core/formatting.dart';

ButtonStyle raisedButtonStyle() {
  return ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: hexToColor(ColorsRepo.primaryColor),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
  );
}
