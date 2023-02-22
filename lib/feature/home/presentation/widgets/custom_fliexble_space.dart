import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selim_trade/components/custom_gradient_button.dart';
import 'package:selim_trade/core/constants/app_icons.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class CustomFliexbleSpace extends StatelessWidget {
  const CustomFliexbleSpace({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      centerTitle: true,
      collapseMode: CollapseMode.parallax,
      background: Image.asset(
        AppImages.appbarBackground,
        fit: BoxFit.fill,
      ),
      title: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity:
            controller.hasClients && controller.offset > kToolbarHeight ? 0 : 1,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.sliver_app_bar_text_modern_safty.tr(),
                style: AppTextStyles.s20w700.copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                LocaleKeys.sliver_app_bar_text_find.tr(),
                style: AppTextStyles.s11w600.copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 34.46,
                    width: 150,
                    child: AppGradientButton(
                      onPressed: () {
                        controller.animateTo(2280,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.bounceIn);
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.orderIcon,
                          ),
                          const SizedBox(
                            width: 15.11,
                          ),
                          Text(
                            LocaleKeys.sliver_app_bar_text_order_gate.tr(),
                            style: AppTextStyles.s15w900
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              )
            ],
          ),
        ),
      ),
    );
  }
}
