import 'package:flutter/material.dart';
import 'package:repo/core/constant/colors.dart';
import 'package:repo/core/utils/formatting.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final String backgroundColor;
  final bool changeTextColor;
  final double widthButton;
  const ButtonWidget({
    super.key,
    required this.text,
    this.changeTextColor = false,
    required this.backgroundColor,
    this.widthButton = double.maxFinite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: widthButton,
      decoration: BoxDecoration(
        color: hexToColor(backgroundColor),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: changeTextColor == false
                ? Colors.white
                : hexToColor(ColorsRepo.primaryColor),
          ),
        ),
      ),
    );
  }
}
