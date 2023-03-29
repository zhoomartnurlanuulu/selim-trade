import 'package:easy_localization/easy_localization.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            LocaleKeys.service_our_services.tr(),
            style: AppTextStyles.s16w800.copyWith(color: AppColors.color414141),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          LocaleKeys.service_staff.tr(),
          textAlign: TextAlign.center,
          style: AppTextStyles.s14w300.copyWith(color: AppColors.color414141),
        ),
      ],
    );
  }
}
