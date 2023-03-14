import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/components/phone_numbers.dart';
import 'package:selim_trade/components/work_time.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          LocaleKeys.work_time_operation_mode.tr(),
          style: AppTextStyles.s12w500,
        ),
        const WorkTime(),
        Text(
          LocaleKeys.work_time_phone.tr(),
          style: AppTextStyles.s12w500,
        ),
        const PhoneNumbers(),
      ],
    );
  }
}
