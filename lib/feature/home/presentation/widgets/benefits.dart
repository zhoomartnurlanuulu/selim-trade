import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selim_trade/core/constants/app_icons.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/theme/app_colors.dart';

class Benefits extends StatelessWidget {
  const Benefits({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 222,
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'Наши преимущества',
              style:
                  AppTextStyles.s16w700.copyWith(color: AppColors.color414141),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          spreadRadius: 1,
                          blurRadius: 4,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    height: 123,
                    width: 225,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.support),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Консультация и техническая поддержка',
                          style: AppTextStyles.s14w600,
                          textAlign: TextAlign.center,
                        )
                      ],
                    )),
                separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                itemCount: 4),
          )
        ],
      ),
    );
  }
}
