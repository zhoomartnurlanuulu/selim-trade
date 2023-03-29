import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/components/custom_app_bar.dart';
import 'package:selim_trade/components/footer_widget.dart';
import 'package:selim_trade/components/question_widget.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/feature/our_works/presentation/widgets/pop_up_menu.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

import 'widgets/result_list.dart';

class OurWorksScreen extends StatelessWidget {
  const OurWorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        elevation: 0,
        color: Colors.white,
        title: Image.asset(
          AppImages.logoBlack,
          height: 39,
        ),
        centerTitle: false,
        actions: const [
          OurWorksPopUp(),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        children: [
          Center(
            child: Text(
              LocaleKeys.about_us_our_works.tr().toUpperCase(),
              style:
                  AppTextStyles.s16w800.copyWith(color: AppColors.color414141),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              LocaleKeys.our_works_all_works.tr(),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const ResultList(),
          const SizedBox(
            height: 40,
          ),
          const QuestionWidget(),
          const FooterWidget()
        ],
      ),
    );
  }
}
