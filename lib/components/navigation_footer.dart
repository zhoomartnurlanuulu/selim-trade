import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';

class FooterNavigation extends StatelessWidget {
  const FooterNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            GestureDetector(
              child: const Text(
                'Главная',
                style: AppTextStyles.s12w500,
              ),
            ),
            GestureDetector(
              child: const Text(
                'О нас',
                style: AppTextStyles.s12w500,
              ),
            ),
            GestureDetector(
              child: const Text(
                'Услуги',
                style: AppTextStyles.s12w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 40,
        ),
        Column(
          children: [
            GestureDetector(
              child: const Text(
                'Работы',
                style: AppTextStyles.s12w500,
              ),
            ),
            GestureDetector(
              child: const Text(
                'Отзывы',
                style: AppTextStyles.s12w500,
              ),
            ),
            GestureDetector(
              child: const Text(
                'Новости',
                style: AppTextStyles.s12w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
