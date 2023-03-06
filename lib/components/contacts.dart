import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          LocaleKeys.work_time_operation_mode.tr(),
          style: AppTextStyles.s12w500,
        ),
        const Text(
          'Пн-Пт 8:30–18:30',
          style: AppTextStyles.s12w500,
        ),
        const Text(
          'Суббота 8:30–14:00',
          style: AppTextStyles.s12w500,
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          LocaleKeys.work_time_phone.tr(),
          style: AppTextStyles.s12w500,
        ),
        const Text(
          '+996 (552) 57 07 55',
          style: AppTextStyles.s12w500,
        ),
        const Text(
          '+996 (500) 88 80 51',
          style: AppTextStyles.s12w500,
        ),
        const Text(
          '+996 (772) 32 76 76',
          style: AppTextStyles.s12w500,
        )
      ],
    );
  }
}
