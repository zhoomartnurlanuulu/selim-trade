import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/core/router/router.gr.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:selim_trade/resource/app_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:selim_trade/api/enums.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServicePopUp extends StatelessWidget {
  const ServicePopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: SvgPicture.asset(AppIcons.menuBlackIcon),
      onSelected: (value) {
        switch (value) {
          case MenuItem.main:
            context.router.replace(const HomeScreenRoute());
            break;
          case MenuItem.news:
            context.router.replace(const NewsScreenRoute());
            break;
          case MenuItem.works:
            context.router.replace(const OurWorksScreenRoute());
            break;
        }
      },
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
          enabled: false,
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
          child: GestureDetector(
            onTap: () async {
              const uri = '+996552570755';
              final url = Uri.parse('tel:$uri');
              if (await canLaunchUrl(url)) {
                launchUrl(url);
              }
            },
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
          ),
        )
      ],
    );
  }
}
