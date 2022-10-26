import 'package:flutter/material.dart';
import 'package:repo/core/constant/colors.dart';
import 'package:repo/core/constant/assets.dart';

import 'package:repo/core/utils/formatting.dart';
ButtonStyle RaisedButtonStyle(){
  return ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: convertColor(primaryColor),
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5))),
  );
}