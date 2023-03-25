import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class AboutUsTextWidget extends StatelessWidget {
  const AboutUsTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 3.77,
                  ),
                  Text(
                    LocaleKeys.about_us_about_slim.tr(),
                    style: AppTextStyles.s14w300
                        .copyWith(color: AppColors.color414141),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    LocaleKeys.about_us_about_slim1.tr(),
                    style: AppTextStyles.s14w300
                        .copyWith(color: AppColors.color414141),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    LocaleKeys.about_us_about_slim2.tr(),
                    style: AppTextStyles.s14w300.copyWith(
                      color: AppColors.color414141,
                    ),
                  ),
                ],
              );
  }
}