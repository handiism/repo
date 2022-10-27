import 'package:flutter/material.dart';
import 'package:repo/core/constant/colors.dart';

import 'package:repo/core/utils/formatting.dart';

ButtonStyle RaisedButtonStyle() {
  return ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: convertColor(primaryColor),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5))),
  );
}
