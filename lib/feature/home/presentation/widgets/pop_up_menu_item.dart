import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selim_trade/core/constants/app_icons.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/core/enums.dart';
import 'package:selim_trade/theme/app_colors.dart';

class CustomPopUp extends StatelessWidget {
  const CustomPopUp({super.key, required this.constraints});
  final SliverConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: constraints.scrollOffset > 260
          ? SvgPicture.asset(AppIcons.menuBlackIcon)
          : SvgPicture.asset(AppIcons.menuIcon),
      onSelected: (value) {},
      itemBuilder: (context) => [
        PopupMenuItem(
          value: MenuItem.main,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Главная',
                style: AppTextStyles.s14w600
                    .copyWith(color: AppColors.color001645),
              ),
              const SizedBox(
                width: 111,
              ),
              Image.asset(
                AppImages.logoPop,
                height: 16,
                width: 36,
              )
            ],
          ),
        ),
        PopupMenuItem(
          value: MenuItem.services,
          child: Text(
            'Услуги',
            style: AppTextStyles.s14w600.copyWith(color: AppColors.color001645),
          ),
        ),
        PopupMenuItem(
          value: MenuItem.news,
          child: Text(
            'Новости',
            style: AppTextStyles.s14w600.copyWith(color: AppColors.color001645),
          ),
        ),
        PopupMenuItem(
          value: MenuItem.works,
          child: Text(
            'Наши работы',
            style: AppTextStyles.s14w600.copyWith(color: AppColors.color001645),
          ),
        ),
        PopupMenuItem(
          enabled: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'г. Бишкек',
                style: AppTextStyles.s14w600
                    .copyWith(color: AppColors.color001645),
              ),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: AppColors.color001645.withOpacity(1),
                  ),
                  Text(
                    '+996 (552) 57 07 55',
                    style: AppTextStyles.s14w600
                        .copyWith(color: AppColors.color001645),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
