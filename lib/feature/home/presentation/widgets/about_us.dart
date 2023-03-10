import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/theme/app_colors.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.about_us_who_us.tr(),
                style: AppTextStyles.s16w700,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 199,
            width: 380,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Column(
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
