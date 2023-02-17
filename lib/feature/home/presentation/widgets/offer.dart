import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/components/circale_button_left.dart';
import 'package:selim_trade/components/circale_button_right.dart';
import 'package:selim_trade/components/custom_text_button.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/router/router.gr.dart';
import 'package:selim_trade/theme/app_colors.dart';

class OfferWidget extends StatelessWidget {
  OfferWidget({super.key});
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 340,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Center(
              child: Text(
                'Мы предлагаем',
                style: AppTextStyles.s16w700,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 174,
              child: ListView.separated(
                controller: controller,
                separatorBuilder: (context, index) => const SizedBox(
                  width: 20,
                ),
                itemCount: 4,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 170,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(AppImages.automatic),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 127, left: 6),
                        height: 34,
                        width: 127,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black.withOpacity(0.2)),
                        child: Center(
                          child: Text(
                            'Автоматика',
                            style: AppTextStyles.s16w800
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                      onPressed: () {
                        context.router.replace(const ServiceScreenRoute());
                      },
                    )),
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                  height: 42.35,
                  width: 42.35,
                  child: CircleButtonRight(
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
