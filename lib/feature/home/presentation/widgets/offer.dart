import 'package:flutter/material.dart';
import 'package:selim_trade/components/circale_button_left.dart';
import 'package:selim_trade/components/circale_button_right.dart';
import 'package:selim_trade/components/custom_text_button.dart';

import 'package:selim_trade/core/app_images.dart';
import 'package:selim_trade/core/app_text_style.dart';
import 'package:selim_trade/theme/app_colors.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      height: 300,
      width: 361,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppImages.thirdBackground,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'Мы предлагаем',
            style: AppTextStyles.s16w700,
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: 4,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 172,
                  width: 250,
                  decoration: const BoxDecoration(color: AppColors.color105BFB),
                );
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 42.35,
                  width: 42.35,
                  child: CircleButtonLeft(
                    onPressed: () {},
                  )),
              const SizedBox(
                width: 50,
              ),
              SizedBox(
                  height: 42,
                  width: 100,
                  child: CustomTextButton(
                    child: Text(
                      'смотреть все',
                      style: AppTextStyles.s12w600
                          .copyWith(color: AppColors.color414141),
                    ),
                    onPressed: () {},
                  )),
              const SizedBox(
                width: 50,
              ),
              SizedBox(
                  height: 42.35,
                  width: 42.35,
                  child: CircleButtonRight(
                    onPressed: () {},
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
