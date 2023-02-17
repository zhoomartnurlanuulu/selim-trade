import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/components/custom_text_button.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/router/router.gr.dart';
import 'package:selim_trade/theme/app_colors.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 309,
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'Последние новости',
              style: AppTextStyles.s16w700.copyWith(
                color: AppColors.color414141,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.only(left: 26.33),
                height: 164,
                width: 241,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(AppImages.newsImage),
                    fit: BoxFit.fill,
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'РАСШИРЕНИЕ ДИЗАЙНА ВОРОТ СТАДНАРТНОЙ СЕРИИ \nRSD01SC BIW',
                    textAlign: TextAlign.start,
                    style: AppTextStyles.s10w800.copyWith(color: Colors.white),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: 4,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 31,
            width: 116,
            child: CustomTextButton(
              child: Text(
                'Все Новости',
                style: AppTextStyles.s12w600
                    .copyWith(color: AppColors.color414141),
              ),
              onPressed: () {
                context.router.replace(const NewsScreenRoute());
              },
            ),
          )
        ],
      ),
    );
  }
}
