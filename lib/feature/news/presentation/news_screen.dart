import 'package:selim_trade/feature/news/presentation/blocs/news_cubit/news_cubit.dart';
import 'package:selim_trade/components/custom_text_button.dart';
import 'package:selim_trade/components/question_widget.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';
import 'package:selim_trade/components/custom_app_bar.dart';
import 'package:selim_trade/components/footer_widget.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:selim_trade/api/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'widgets/pop_up_menu.dart';
import 'widgets/news_list.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int currentPage = 1;
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
          padding: EdgeInsets.zero,
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
            const NewsList(),
           
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
