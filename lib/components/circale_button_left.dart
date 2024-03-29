import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:selim_trade/resource/app_icons.dart';
import 'package:selim_trade/resource/app_colors.dart';

class CircleButtonLeft extends StatelessWidget {
  CircleButtonLeft({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.color414141.withOpacity(0.4),
        shape: const CircleBorder(
          side: BorderSide(color: Colors.white, width: 3.53),
        ),
      ),
      onPressed: onPressed,
      child: SvgPicture.asset(AppIcons.arrowBack),
    );
  }
}
