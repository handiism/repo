import 'package:flutter/material.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/utils/formatting.dart';

class ButtonRepo extends StatelessWidget {
  final String text;
  final String backgroundColor;
  final bool changeTextColor;
  final double widthButton;
  final VoidCallback onPressed;

  const ButtonRepo({
    super.key,
    required this.text,
    this.changeTextColor = false,
    required this.backgroundColor,
    this.widthButton = double.maxFinite,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
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
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: changeTextColor == false
                  ? Colors.white
                  : hexToColor(ColorsRepo.primaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
