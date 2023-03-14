import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selim_trade/resource/app_icons.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/api/enums.dart';
import 'package:selim_trade/core/router/router.gr.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomPopUp extends StatelessWidget {
  const CustomPopUp({super.key, required this.constraints});
  final SliverConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: constraints.scrollOffset > 260
          ? SvgPicture.asset(AppIcons.menuBlackIcon)
          : SvgPicture.asset(AppIcons.menuIcon),
      onSelected: (value) {
        if (value == MenuItem.services) {
          context.router.push(const ServiceScreenRoute());
        } else if (value == MenuItem.news) {
          context.router.push(const NewsScreenRoute());
        } else if (value == MenuItem.works) {
          context.router.push(const OurWorksScreenRoute());
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          enabled: false,
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
