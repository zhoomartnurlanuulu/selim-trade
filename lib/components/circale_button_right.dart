import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:selim_trade/core/constants/app_icons.dart';
import 'package:selim_trade/theme/app_colors.dart';

class CircleButtonRight extends StatelessWidget {
  const CircleButtonRight({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final Function() onPressed;
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
        child: SvgPicture.asset(AppIcons.arrowForward));
  }
}
