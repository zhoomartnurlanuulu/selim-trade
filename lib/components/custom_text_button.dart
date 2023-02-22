import 'package:flutter/material.dart';

import 'package:selim_trade/theme/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {Key? key, required this.child, required this.onPressed})
      : super(key: key);
  final Function() onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.color105BFB,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: AppColors.color105BFB),
          ),
        ),
        onPressed: onPressed,
        child: child);
  }
}
