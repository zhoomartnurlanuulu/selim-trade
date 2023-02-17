import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'РЕЖИМ РАБОТЫ',
          style: AppTextStyles.s12w500,
        ),
        Text(
          'Пн-Пт 8:30–18:30',
          style: AppTextStyles.s12w500,
        ),
        Text(
          'Суббота 8:30–14:00',
          style: AppTextStyles.s12w500,
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          'TЕЛЕФОН',
          style: AppTextStyles.s12w500,
        ),
        Text(
          '+996 (552) 57 07 55',
          style: AppTextStyles.s12w500,
        ),
        Text(
          '+996 (500) 88 80 51',
          style: AppTextStyles.s12w500,
        ),
        Text(
          '+996 (772) 32 76 76',
          style: AppTextStyles.s12w500,
        )
      ],
    );
  }
}
