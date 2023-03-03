import 'package:flutter/material.dart';
import 'package:selim_trade/components/custom_app_bar.dart';
import 'package:selim_trade/components/footer_widget.dart';
import 'package:selim_trade/components/question_widget.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/feature/our_works/presentation/widgets/pop_up_menu.dart';
import 'package:selim_trade/theme/app_colors.dart';

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
        physics: const ClampingScrollPhysics(),
        children: [
          Center(
            child: Text(
              'Наши Работы'.toUpperCase(),
              style:
                  AppTextStyles.s16w800.copyWith(color: AppColors.color414141),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Здесь мы собрали наши лучшие проекты, чтобы вы могли вдохновиться идеями для собственного проекта. Вы найдёте \nпроект по душе и нраву, который захотите \nвоплотить в жизнь.',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const ResultList(),
          const QuestionWidget(),
          const FooterWidget()
        ],
      ),
    );
  }
}
