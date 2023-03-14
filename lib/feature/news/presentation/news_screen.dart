import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/api/service_locator.dart';
import 'package:selim_trade/components/custom_app_bar.dart';
import 'package:selim_trade/components/custom_text_button.dart';
import 'package:selim_trade/components/footer_widget.dart';
import 'package:selim_trade/components/question_widget.dart';
import 'package:selim_trade/feature/news/presentation/blocs/news_cubit/news_cubit.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

import 'widgets/news_list.dart';
import 'widgets/pop_up_menu.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int newsCount = 3;
    return BlocProvider(
      create: (context) => sl<NewsCubit>(),
      child: Scaffold(
        appBar: CustomAppBar(
          elevation: 0,
          color: Colors.white,
          centerTitle: false,
          title: Image.asset(
            AppImages.logoBlack,
            height: 39,
          ),
          actions: const [
            NewsPopUp(),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          physics: const ClampingScrollPhysics(),
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.news_company_news.tr(),
                    style: AppTextStyles.s16w800
                        .copyWith(color: AppColors.color414141),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    LocaleKeys.news_for_your_attention.tr(),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            NewsList(newsCount: newsCount),
            Center(
              child: SizedBox(
                width: 130,
                height: 45,
                child: CustomTextButton(
                    child: Text(
                      LocaleKeys.news_load_more.tr(),
                      style: AppTextStyles.s14w300
                          .copyWith(color: AppColors.color414141),
                    ),
                    onPressed: () {}),
              ),
            ),
            const SizedBox(
              height: 71,
            ),
            const QuestionWidget(),
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}
