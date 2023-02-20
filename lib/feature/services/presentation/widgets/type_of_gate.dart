import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/theme/app_colors.dart';

class TypeOfGate extends StatelessWidget {
  const TypeOfGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ТИПЫ ВОРОТ',
            style: AppTextStyles.s16w800.copyWith(color: AppColors.color414141),
          ),
          SizedBox(
            height: 1040,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Container(
                height: 172,
                width: 287,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(AppImages.gatte),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 127, left: 10),
                      child: Text(
                        'Противопожарные\nраспашные ворота',
                        style:
                            AppTextStyles.s14w800.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
