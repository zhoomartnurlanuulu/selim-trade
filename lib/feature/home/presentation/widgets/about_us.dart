import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/theme/app_colors.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Кто такие Selim trade?',
                style: AppTextStyles.s16w700,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 199,
            width: 370,
            child: Card(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 3.77,
                  ),
                  Text(
                    'Мы являемся официальным\n представителем DOORHAN.',
                    style: AppTextStyles.s14w300
                        .copyWith(color: AppColors.color414141),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Производственно — монтажная \nкомпания Selim trade основана \nв 2003 году.',
                    style: AppTextStyles.s14w300
                        .copyWith(color: AppColors.color414141),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Основа нашей деятельности — это продажа \nи монтаж: ворот, рольставней, шлагбаумов, \nрол штор, жалюзи и многое другое.',
                    style: AppTextStyles.s14w300.copyWith(
                      color: AppColors.color414141,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
