import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/feature/home/presentation/widgets/about_us_text_widget.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.about_us_who_us.tr(),
                style: AppTextStyles.s16w700,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: AboutUsTextWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
