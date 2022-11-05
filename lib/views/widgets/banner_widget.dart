import 'package:flutter/cupertino.dart';
import 'package:repo/core/shared/assets.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/utils/formatting.dart';

class BannerRepo extends StatelessWidget {
  const BannerRepo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AssetsRepo.itcLogo,
          height: 88,
          width: 54,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'ITC Repository',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: hexToColor(ColorsRepo.primaryColor),
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ],
    );
  }
}
